# Cartocraft 2 Core Datapack

## Readonly Scores

- \(`#difficulty`, `cc2`\)
- \(`#gametime`, `cc2`\)
- \(`@s[type=player]`, `cc2.health`\)
- \(`@s[type=player]`, `cc2.absorption`\)
- \(`@s[type=player]`, `cc2.selected_slot`\)
- \(`@s[type=player]`, `cc2.pos_x`\)
- \(`@s[type=player]`, `cc2.pos_y`\)
- \(`@s[type=player]`, `cc2.pos_z`\)
- \(`@s[type=player]`, `cc2.yaw`\)
- \(`@s[type=player]`, `cc2.pitch`\)

## Entity Marker Scores

- `cc2.dummy_mob`
- `cc2.not_mob`

## Loot Tables

- `cc2:objective/<color>`
- `cc2:dummy_item`

Example:

```json
{
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "loot_table",
          "value": "cc2:dummy_item",
          "functions": [
            {
              "function": "set_count",
              "count": 10
            }
          ]
        }
      ]
    }
  ]
}
```

## Item Custom Data

- `cc2:{unobtainable:{}}` - Items with this custom data in player's inventory will be cleared

## Entities

- `cc2-0-0-0-1` - Text display
- `cc2-0-0-0-2` - Item display
- `cc2-0-0-0-3` - Block display
- `cc2-0-0-0-4` - Marker
- `cc2-0-0-0-5` - Armor stand (base burning time = 1)

## Function Tags

### `#cc2:load_player_nbt_score`

- Hook only; not callable

Example:
```mcfunction
# this function is hooked on #cc2:load_player_nbt_score
execute store result score @s example.air run data get storage cc2:player_nbt root.Air
```

### `#minecraft:tick`

- `cc2:first_tick` should be the first one
- `cc2:last_tick` should be the last one

## Player Data Storage

- Call `cc2:load_player_storage` as `@s` to load
- Access path `root.<namespace>.*` of storage `cc2:player_storage` to store data
- Call `cc2:save_player_storage` to save data back

Example: Store current offhand item

```mcfunction
# run as @s
function cc2:load_player_storage
item replace entity cc2-0-0-0-2 contents from entity @s weapon.offhand
data modify storage cc2:player_storage root.example.offhand_item set from entity cc2-0-0-0-2 item
function cc2:save_player_storage
```

Example: Give the item back

```mcfunction
# run as @s
function cc2:load_player_storage
data modify entity cc2-0-0-0-2 item set from storage cc2:player_storage root.example.offhand_item
item replace entity @s weapon.offhand from entity cc2-0-0-0-2 contents
```

### `root.cc2.actionbar`

- A list of object with following fields:
  - `id`: identifier
  - `text`: stringified text component to display in actionbar; its total width should be 0
- To display: modify `root.cc2.actionbar[{id: <id>}].text`
- To erase: remove `root.cc2.actionbar[{id: <id>}]`

Example:
```mcfunction
# run as @s
function cc2:load_player_storage
data modify storage cc2:player_storage root.cc2.actionbar[{id: "example:number"}].text set value '["0", {"text": "0", "font": "example:negative_number"}]'
function cc2:save_player_storage
```

## Mcdoc

### To use

1. Copy `mcdoc` folder to your datapack
2. Optionally delete `mcdoc/cartocraft/internal_storage`
3. Reload VSC

### To customize player data storage

The same example: Store current offhand item

```mcfunction
# run as @s
function cc2:load_player_storage
item replace entity cc2-0-0-0-2 contents from entity @s weapon.offhand
data modify storage cc2:player_storage root.example.offhand_item set from entity cc2-0-0-0-2 item
function cc2:save_player_storage
```

To add datatype to `root.example`, use:

```
use ::java::server::world::item::ItemStack
dispatch cc2:player_storage[example] to struct {
  offhand_item: ItemStack
}
```

### To customize item `custom_data`

Example: `*[custom_data~{example: {wand: {}, flag: 0b}}]`

```
dispatch mcdoc:custom_data[example] to struct {
  wand?: struct {},
  flag?: boolean
}
```

### To customize marker `data`

Wait, why?

Example: `{data: {example: {command: "say @s"}}}`

```
dispatch mcdoc:marker_data[example] to struct {
  command?: #[command] string
}
```
