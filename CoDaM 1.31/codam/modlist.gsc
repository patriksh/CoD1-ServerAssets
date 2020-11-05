// =========  SEE COMMENTS AT END OF THIS FILE!  =========
///////////////////////////////////////////////////////////////////////////////
main( register )
{
	codam\utils::debug( 0, "======= I'M IN MODLIST" );
	//           DO NOT ADD/CHANGE ANYTHING ABOVE THIS COMMENT.
	//////////////////////////////////////////////////////////////////////

	// Example from Hammer's Goodies -- REMOVE the // to activate
//	[[ register ]]( "Hammer's Goodies", codam\HamGoodies::main );
//	[[ register ]]( "Hammer's Mortars", codam\HamMortars::main );

	// Add other mods here ...........

	//////////////////////////////////////////////////////////////////////
	//           DO NOT ADD/CHANGE ANYTHING BELOW THIS COMMENT.
	return;
}

//////////////////////////////////////////////////////////////////////
// Add mods using the following statement:
// Syntax:
//	[[ register ]]( "<mod_desc>", <mod_func> );
//
// where,
//	<mod_desc> 	= a short string describing the mod
//	<mod_func>	= the primary initialization function from an
//			  ... add-on mod file.  Hopefully each add-on
//			  ... mod will provide their own README with
//			  ... recommended registration entry!
//////////////////////////////////////////////////////////////////////
// WARNING  WARNING  WARNING  WARNING  WARNING  WARNING  WARNING    //
//////////////////////////////////////////////////////////////////////
// - You MUST comment-out any registration lines belonging to mods
//   not currently INSTALLED on your server.  To comment something
//   out, simply preceed the line with //.  Failure to do this will
//   prevent your server from running!
// - Mods are started in the order listed.  Should one mod
//   depend on another (as explained in a mod's readme file), then
//   care must be given to ensure mods are placed in proper order.
//////////////////////////////////////////////////////////////////////

//
///////////////////////////////////////////////////////////////////////////////
