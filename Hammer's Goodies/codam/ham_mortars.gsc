// =========  SEE COMMENTS AT END OF THIS FILE!  =========
///////////////////////////////////////////////////////////////////////////////
main( register )
{
	codam\utils::debug( 0, "======= I'M IN HAM_MORTARS" );
	//           DO NOT ADD/CHANGE ANYTHING ABOVE THIS COMMENT.
	//////////////////////////////////////////////////////////////////////

	switch ( level.ham_mapname )
	{
	  case "mp_brecourt":
	  	// Registration:  ORIGIN            TERRAIN (snow/dirt)
		[[ register ]]( ( 1817, -1466, 45 ),		"dirt" );
		[[ register ]]( ( 1832, -1484, 45 ),		"dirt" );
		[[ register ]]( ( 2367, -1855, 45 ),		"dirt" );
		[[ register ]]( ( 2892, -2882, 45 ),		"dirt" );
		[[ register ]]( ( 800, -3003, 42 ),		"dirt" );
		[[ register ]]( ( 347, -2400, 42 ),		"dirt" );
		[[ register ]]( ( -2174, -1819, 33 ),		"dirt" );
		break;
	  case "mp_carentan":
		break;
	  case "mp_chateau":
		break;
	  case "mp_dawnville":
		[[ register ]]( ( -390, -15553, -47 ),		"dirt" );
		[[ register ]]( ( -814, -16128, -55 ),		"dirt" );
		[[ register ]]( ( -1925, -16425, -6 ),		"dirt" );
		[[ register ]]( ( -2168, -16938, 8 ),		"dirt" );
		[[ register ]]( ( -1747, -17011, 20 ),		"dirt" );
		[[ register ]]( ( -1567, -17889, 32 ),		"dirt" );
		[[ register ]]( ( 724, -17269, 24 ),		"dirt" );
		break;
	  case "mp_depot":
		break;
	  case "mp_harbor":
		break;
	  case "mp_hurtgen":
		[[ register ]]( ( -2962, -913, -45 ),		"snow" );
		[[ register ]]( ( -1330, -241, 25 ),		"snow" );
		[[ register ]]( ( -4472, 3202, 54 ),		"snow" );
		[[ register ]]( ( -3247, 1969, -53 ),		"snow" );
		[[ register ]]( ( -2527, 1377, -50 ),		"snow" );
		[[ register ]]( ( -2732, 745, -93 ),		"snow" );
		[[ register ]]( ( -2633, 262, -77 ),		"snow" );
		[[ register ]]( ( -3359, 309, -74 ),		"snow" );
		[[ register ]]( ( -3552, 1150, -72 ),		"snow" );
		[[ register ]]( ( -4499, 1152, 39 ),		"snow" );
		[[ register ]]( ( -5398, 413, 119 ),		"snow" );
		[[ register ]]( ( -2967, -1981, -29 ),		"snow" );
		break;
	  case "mp_pavlov":
		[[ register ]]( ( -11583, 11575, -79 ),		"snow" );
		[[ register ]]( ( -10541, 11889, -78 ),		"snow" );
		[[ register ]]( ( -9500, 11361, -16 ),		"snow" );
		[[ register ]]( ( -9538, 10741, -30 ),		"snow" );
		[[ register ]]( ( -8639, 11438, -15 ),		"snow" );
		[[ register ]]( ( -9567, 9676, -63 ),		"snow" );
		[[ register ]]( ( -9662, 9410, -55 ),		"snow" );
		[[ register ]]( ( -9930, -9737, -71 ),		"snow" );
		[[ register ]]( ( -10197, 8014, -86 ),		"snow" );
		[[ register ]]( ( -10562, 7042, -111 ),		"snow" );
		[[ register ]]( ( -10477, 9899, -71 ),		"snow" );
		[[ register ]]( ( -7279, 9687, 64 ),		"snow" );
		[[ register ]]( ( -9164, 10387, 464 ),		"snow" );
		break;
	  case "mp_powcamp":
		break;
	  case "mp_railyard":
		[[ register ]]( ( 125, -615, 2 ),		"snow" );
		[[ register ]]( ( -1151, -1209, 6 ),		"snow" );
		[[ register ]]( ( -2188, -748, -3 ),		"snow" );
		[[ register ]]( ( -289, 1148, 6 ),		"snow" );
		[[ register ]]( ( 86, 1215, 6 ),		"snow" );
		[[ register ]]( ( 122, 1702, 6 ),		"snow" );
		[[ register ]]( ( 705, 1286, 6 ),		"snow" );
		[[ register ]]( ( 1948, 1014, 238 ),		"snow" );
		[[ register ]]( ( 2083, 1654, 298 ),		"snow" );
		[[ register ]]( ( -1431, 2404, -65 ),		"snow" );
		[[ register ]]( ( -1764, 2592, -65 ),		"snow" );
		[[ register ]]( ( -2412, 2611, -64 ),		"snow" );
		[[ register ]]( ( -2592, 2937, -64 ),		"snow" );
		break;
	  case "mp_rocket":
		break;
	  case "mp_ship":
		break;
	  case "mp_neuville":
	  	// Data provided by: =DMG=Zippy
		[[ register ]]( ( -15304, 4105, -6 ),		"dirt" );
		[[ register ]]( ( -14649, 3785, 15 ),		"dirt" );
		[[ register ]]( ( -14671, 5593, 31 ),		"dirt" );
		[[ register ]]( ( -13571, 4734, 1 ),		"dirt" );
		[[ register ]]( ( -12485, 4164, 3 ),		"dirt" );
		[[ register ]]( ( -12214, 3572, -83 ),		"dirt" );
		[[ register ]]( ( -12708, 2904, -48 ),		"dirt" );
		[[ register ]]( ( -14759, 2789, -16 ),		"dirt" );
		[[ register ]]( ( -15104, 2943, 2 ),		"dirt" );
		[[ register ]]( ( -15430, 2744, -15 ),		"dirt" );
		break;
	  case "mp_bocage":
	  	// Data provided by: =DMG=Zippy
		[[ register ]]( ( 2882, 6965, -12 ),		"dirt" );
		[[ register ]]( ( 3340, 6596, 7 ),		"dirt" );
		[[ register ]]( ( 3844, 6575, 15 ),		"dirt" );
		[[ register ]]( ( 1583, 7176, -5 ),		"dirt" );
		[[ register ]]( ( -1577, 7374, 38 ),		"dirt" );
		[[ register ]]( ( -3065, 4835, 17 ),		"dirt" );
		[[ register ]]( ( -2814, 4665, 12 ),		"dirt" );
		[[ register ]]( ( -2710, 4033, 42 ),		"dirt" );
		[[ register ]]( ( -1881, 3951, 12 ),		"dirt" );
		[[ register ]]( ( -1086, 4313, 5 ),		"dirt" );
		[[ register ]]( ( -680, 4220, -9 ),		"dirt" );
		[[ register ]]( ( -1314, 5328, 11 ),		"dirt" );
		[[ register ]]( ( -40, 5416, 1 ),		"dirt" );
		[[ register ]]( ( 345, 6030, 27 ),		"dirt" );
		[[ register ]]( ( 31, 8689, -4 ),		"dirt" );
		[[ register ]]( ( -103, 8100, 13 ),		"dirt" );
		[[ register ]]( ( -131, 7189, 41 ),		"dirt" );
		[[ register ]]( ( 414, 6936, 43 ),		"dirt" );
		[[ register ]]( ( 725, 6549, 28 ),		"dirt" );
		[[ register ]]( ( 1275, 6539, 36 ),		"dirt" );
		[[ register ]]( ( 1823, 6205, 35 ),		"dirt" );
		[[ register ]]( ( 2676, 5927, 25 ),		"dirt" );
		[[ register ]]( ( 4033, 5542, 5 ),		"dirt" );
		[[ register ]]( ( 3251, 5282, 19 ),		"dirt" );
		[[ register ]]( ( 2613, 4997, 20 ),		"dirt" );
		[[ register ]]( ( 2048, 4872, 10 ),		"dirt" );
		[[ register ]]( ( 2656, 4151, 2 ),		"dirt" );
		[[ register ]]( ( 2586, 3394, -22 ),		"dirt" );
		[[ register ]]( ( 2115, 3833, -4 ),		"dirt" );
		[[ register ]]( ( 1731, 3436, -15 ),		"dirt" );
		[[ register ]]( ( 1639, 1772, 20 ),		"dirt" );
		[[ register ]]( ( 505, 3151, -27 ),		"dirt" );
		[[ register ]]( ( 701, 3816, 5 ),		"dirt" );
		break;
	  case "mp_stalingrad":
		[[ register ]]( ( 2230, -1273, -3 ),		"dirt" );
		[[ register ]]( ( 2930, 87, 9 ),		"dirt" );
		[[ register ]]( ( 4376, -127, 44 ),		"dirt" );
		[[ register ]]( ( 4145, -428, 48 ),		"dirt" );
	  	break;
	  default:
		break;
	}

	//////////////////////////////////////////////////////////////////////
	//           DO NOT ADD/CHANGE ANYTHING BELOW THIS COMMENT.
	return;
}
