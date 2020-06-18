// -- Datums -- //

/obj/effect/overmap/visitable/sector/luckystation
	name = "Lucky Station"
	desc = "An old Tradeband research station."
	scanner_desc = @{"[i]Transponder[/i]: Strong Repeating Comms Signal
[b]Notice[/b]: This is Director Breekur of Lucky Station 23. This recording is set to repeat indefinitely. This is a warning, STEER CLEAR."}
	icon = 'icons/obj/overmap_vr.dmi'
	icon_state = "lucky"
	known = FALSE
	color = "#ee3333" //Redish, so it stands out against the other debris-like icons
	initial_generic_waypoints = list("luckystation_lshuttle", "luckystation_sshuttle")

// -- Objs -- //
/obj/effect/shuttle_landmark/premade/luckystation/sshuttle
	name = "Lucky Station - Small Shuttle"
	landmark_tag = "luckystation_sshuttle"

/obj/effect/shuttle_landmark/premade/luckystation/lshuttle
	name = "Lucky Station - Large Shuttle"
	landmark_tag = "luckystation_lshuttle"


//This does nothing right now, but is framework if we do POIs for this place
/obj/away_mission_init/luckystation
	name = "away mission initializer - luckystation"

/obj/away_mission_init/luckystation/Initialize()
	initialized = TRUE
	return INITIALIZE_HINT_QDEL

/area/tether_away/luckystation
	name = "Away Mission - Lucky Station"
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "dark"

/area/tether_away/luckystation/explored
	icon_state = "debrisexplored"

/area/tether_away/luckystation/unexplored
	icon_state = "debrisunexplored"

/area/tether_away/luckystation/derelict
	icon_state = "debrisexplored"
	forced_ambience = list('sound/ambience/tension/tension.ogg', 'sound/ambience/tension/horror.ogg')

//TFF 26/12/19 - Sub-areas for the APCs.
/area/tether_away/luckystation/engines
	name = "POI - Lucky Engineering"