# If the chunk is not loaded, wait until it's loaded
execute unless loaded 0 0 0 run return run schedule function cc2.internal:forceload_chunk_load 1t

# Utility entities
execute unless entity cc2-0-0-0-1 run summon text_display 0. 0. 0. {UUID: [I; 3266, 0, 0, 1], view_range: 0, alignment: "left", text: '""'}
execute unless entity cc2-0-0-0-2 run summon item_display 0. 0. 0. {UUID: [I; 3266, 0, 0, 2], view_range: 0}
execute unless entity cc2-0-0-0-3 run summon block_display 0. 0. 0. {UUID: [I; 3266, 0, 0, 3], view_range: 0}
execute unless entity cc2-0-0-0-4 run summon marker 0. 0. 0. {UUID: [I; 3266, 0, 0, 4]}
execute unless entity cc2-0-0-0-5 run summon armor_stand 0. 0. 0. {UUID: [I; 3266, 0, 0, 5], Marker: 1b, Invisible: 1b, NoGravity: 1b}
