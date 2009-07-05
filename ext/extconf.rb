require 'mkmf'

$CFLAGS << ' -std=gnu99 -ffast-math'

with_cflags($CFLAGS) do
	create_makefile('chipmunk')
end
