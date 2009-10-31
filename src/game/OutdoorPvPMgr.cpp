/*
 * Copyright (C) 2005-2008 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "OutdoorPvPMgr.h"
#include "OutdoorPvPHP.h"
#include "OutdoorPvPNA.h"
#include "OutdoorPvPTF.h"
#include "OutdoorPvPZM.h"
#include "OutdoorPvPSI.h"
#include "OutdoorPvPEP.h"
#include "OutdoorPvPLA.h"
#include "Player.h"
#include "World.h"
#include "Policies/SingletonImp.h"

INSTANTIATE_SINGLETON_1( OutdoorPvPMgr );

OutdoorPvPMgr::OutdoorPvPMgr()
{
    sLog.outDebug("OutdoorPvPMgr: Instantiating");
}

OutdoorPvPMgr::~OutdoorPvPMgr()
{
    sLog.outDebug("OutdoorPvPMgr: Deleting");
    for(OutdoorPvPSet::iterator itr = m_OutdoorPvPSet.begin(); itr != m_OutdoorPvPSet.end(); ++itr)
        (*itr)->DeleteSpawns();
}

void OutdoorPvPMgr::CreateOutdoorPvP(uint32 typeId, uint32 mapId)
{
    OutdoorPvP * pOP = NULL;
    switch (typeId)
    {
        case OUTDOOR_PVP_HP: pOP = new OutdoorPvPHP; break;
        case OUTDOOR_PVP_NA: pOP = new OutdoorPvPNA; break;
        case OUTDOOR_PVP_TF: pOP = new OutdoorPvPTF; break;
        case OUTDOOR_PVP_ZM: pOP = new OutdoorPvPZM; break;
        case OUTDOOR_PVP_SI: pOP = new OutdoorPvPSI; break;
        case OUTDOOR_PVP_EP: pOP = new OutdoorPvPEP; break;
        case OUTDOOR_PVP_LA: pOP = new OutdoorPvPLA; break;
        default: break;
    }
    if(!pOP)
    {
        sLog.outDebug("OutdoorPvPMgr: init failed for %i.", typeId);
        return;
    }
    if(!pOP->SetupOutdoorPvP())
    {
        sLog.outDebug("OutdoorPvPMgr: SetupOutdoorPvP failed for %i.", typeId);
        delete pOP;
        return;
    }
    pOP->SetTypeId(typeId);
    pOP->SetMapId(mapId);

    if (sMapStore.LookupEntry(mapId))
    {
        m_OutdoorPvPSet.insert(pOP);
        sLog.outDebug("OutdoorPvPMgr: init successfull for %i.", typeId);
    }
    else
        sLog.outError("OutdoorPvPMgr: init not successfull for %i cause of unknown map.", typeId);
}

void OutdoorPvPMgr::InitOutdoorPvP()
{
    CreateOutdoorPvP(OUTDOOR_PVP_HP, 530);
    CreateOutdoorPvP(OUTDOOR_PVP_NA, 530);
    CreateOutdoorPvP(OUTDOOR_PVP_TF, 530);
    CreateOutdoorPvP(OUTDOOR_PVP_ZM, 530);
    CreateOutdoorPvP(OUTDOOR_PVP_SI, 1);
    CreateOutdoorPvP(OUTDOOR_PVP_EP, 1);
    CreateOutdoorPvP(OUTDOOR_PVP_LA, 571);
}

void OutdoorPvPMgr::AddZone(uint32 zoneid, OutdoorPvP *handle)
{
    m_OutdoorPvPMap[zoneid] = handle;
}

OutdoorPvP* OutdoorPvPMgr::GetOutdoorPvPToZoneId(uint32 zoneid)
{
    OutdoorPvPMap::iterator itr = m_OutdoorPvPMap.find(zoneid);
    if(itr == m_OutdoorPvPMap.end())
        return NULL;
    return itr->second;
}

void OutdoorPvPMgr::NotifyMapAdded(Map* map)
{
    // World maps only - it's outdoor after all.
    if (map->Instanceable())
        return;

    for(OutdoorPvPSet::iterator itr = m_OutdoorPvPSet.begin(); itr != m_OutdoorPvPSet.end(); ++itr)
    {
        OutdoorPvP* opvp = *itr;
        if (!opvp->GetMap() && opvp->GetMapId() == map->GetId())
        {
            opvp->SetMap(map);
            map->AddOutdoorPvP(opvp, opvp->GetTypeId());
        }
    }
}

bool OutdoorPvPMgr::HandleCustomSpell(Player *plr, uint32 spellId, GameObject * go)
{
    for(OutdoorPvPSet::iterator itr = m_OutdoorPvPSet.begin(); itr != m_OutdoorPvPSet.end(); ++itr)
    {
        if((*itr)->HandleCustomSpell(plr,spellId,go))
            return true;
    }
    return false;
}
