// =========  SEE COMMENTS AT END OF THIS FILE!  =========
///////////////////////////////////////////////////////////////////////////////
main( register )
{
	codam\utils::debug( 0, "======= I'M IN MODTYPES" );
	//           DO NOT ADD/CHANGE ANYTHING ABOVE THIS COMMENT.
	//////////////////////////////////////////////////////////////////////

	[[ register ]]( "CoDaM",  "tdm", codam\GameTypes\_tdm::main );
	[[ register ]]( "CoDaM",   "dm", codam\GameTypes\_dm::main );
	[[ register ]]( "CoDaM",   "sd", codam\GameTypes\_sd::main );
	[[ register ]]( "CoDaM",   "re", codam\GameTypes\_re::main );
	[[ register ]]( "CoDaM",  "bel", codam\GameTypes\_bel::main );
	[[ register ]]( "CoDaM",   "hq", codam\GameTypes\_hq::main );

	// Add other mods here ...........
	// PLEASE NOTE: ONLY MODS CONVERTED TO CODAM CAN BE REGISTERED!!!!!!

	//////////////////////////////////////////////////////////////////////
	//           DO NOT ADD/CHANGE ANYTHING BELOW THIS COMMENT.
	return;
}

//////////////////////////////////////////////////////////////////////
// Add mods using the following statement:
// Syntax:
//	[[ register ]]( "<mod_type>", "<gametype>", <mod_func> );
//
// where,
//	<mod_type> 	= a short string identifying mod type, e.g. "CoDaM"
//			= ... CASE-INSENSITIVE
//      <gametype>      = the game type string to register, e.g. "tdm"
//			= ... CASE-INSENSITIVE
//	<mod_func>	= the primary initialization function for the gametype
//////////////////////////////////////////////////////////////////////
// WARNING  WARNING  WARNING  WARNING  WARNING  WARNING  WARNING    //
//////////////////////////////////////////////////////////////////////
// - You MUST comment-out any registration lines belonging to mods
//   not currently INSTALLED on your server.  To comment something
//   out, simply preceed the line with //.  Failure to do this will
//   prevent your server from running!
//////////////////////////////////////////////////////////////////////

//
///////////////////////////////////////////////////////////////////////////////
