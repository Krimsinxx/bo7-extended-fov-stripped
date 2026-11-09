#using scripts\common\utility;
#using scripts\common\callbacks;
#using scripts\common\values;

autoexec extended_fov_autoexec()
{
    level callback::add( #"player_spawned", &ef_spawned );
}

function ef_spawned( params )
{
    if ( isbot( self ) )
    {
        return;
    }

    setdvar( @"cg_fov_viewmodel", "90" );
    setdvar( @"cg_fovScale", "2" );
}
