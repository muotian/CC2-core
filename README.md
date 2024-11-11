# Cartocraft 2 Core Datapack

## Readonly Scores

- \(`#difficulty`, `cc2`\)
- \(`#gametime`, `cc2`\)
- \(`@s[type=player]`, `cc2.health`\)
- \(`@s[type=player]`, `cc2.absorption`\)
- \(`@s[type=player]`, `cc2.selected_slot`\)

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

## Function Tags

### `#cc2:load_player_nbt_score`

- Hook only
- Not callable

Example:
```mcfunction
# this function is hooked on #cc2:load_player_nbt_score
execute store result score @s example.air run data get storage cc2:player_nbt root.Air
```
