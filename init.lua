print("++++++++ Hi this is RetroBlocks Mod by: MineYoshi +++++++++")

minetest.register_node("retroblocks:smb_brick", {
	description = "SMB Brick",
	tile_images = {"smb_brick.bmp"},
	groups = {cracky=3, stone=2},
})
minetest.register_craft({
	output = '"retroblocks:smb_brick" 15',
	recipe = {
		{'default:brick', 'default:brick', 'default:brick', ''},
		{'default:brick', 'default:brick', 'default:brick', ''},
		{'default:brick', 'default:brick', 'default:brick', ''},
		}
})
minetest.register_node("retroblocks:sm64_star", {
	description = "SM64 Star Block",
	tile_images = {"sm64_star.bmp"},
	groups = {crumbly=3},
})
minetest.register_craft({
	output = '"retroblocks:sm64_star" 3',
	recipe = {
		{'default:mese_block', 'default:mese_block', ''},
		{'default:mese_block', 'default:mese_block', ''},
		{'', '', ''},
		}
})

minetest.register_node("retroblocks:smb_cloud", {
	description = "SMB Cloud",
	tile_images = {"smb_clouds.bmp", "smb_clouds_top.bmp"},
	groups = {crumbly=1},
    on_place = minetest.rotate_node
})
minetest.register_craft({
	output = '"retroblocks:smb_cloud" 17',
	recipe = {
		{'wool:white', 'wool:white', ''},
		{'wool:white', 'wool:white', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:kirby_miniature", {
	description = "Kirby Miniature",
	tile_images = {"kirby_miniature_side.bmp", "kirby_miniature_top.bmp", "kirby_miniature_front.bmp"},
	groups = {crumbly=1},
    paramtype2 = "facedir",
})
minetest.register_craft({
	output = '"retroblocks:kirby_miniature" 1',
	recipe = {
		{'wool:pink', 'wool:white', ''},
		{'wool:pink', 'wool:pink', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:sonic_grass", {
	description = "Sonic 1 Grass",
	tile_images = {"sonic_grass_top.bmp", "sonic_grass.bmp"},
	groups = {crumbly=3},
    on_place = minetest.rotate_node,
})
minetest.register_craft({
	output = '"retroblocks:sonic_grass" 99',
	recipe = {
		{'default:sand', 'default:sand', ''},
		{'default:dirt', 'default:dirt', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:sonic_dirt", {
	description = "Sonic 1 Dirt",
	tile_images = {"sonic_dirt.bmp" },
	groups = {crumbly=3},
})
minetest.register_craft({
	output = '"retroblocks:sonic_dirt" 22',
	recipe = {
		{'default:dirt', 'default:dirt', ''},
		{'default:dirt', 'default:dirt', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:smb_cobble", {

	description = "Smb Cobble",
	tile_images = {"smb_cobble.bmp" },
	groups = {cracky=3, stone=2},
})
minetest.register_craft({
	output = '"retroblocks:smb_cobble" 12',
	recipe = {
		{'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:smb_castlebrick", {
	description = "SMB Castle Brick",
	tile_images = {"smb_castlebrick.bmp"},
	groups = {cracky=3, stone=2},
})
minetest.register_craft({
	output = '"retroblocks:smb_castlebrick" 45',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		{'default:cobble', 'default:cobble', 'default:cobble', ''},
		}
})
minetest.register_node("retroblocks:sonic_miniature", {
	description = "Sonic 1 Miniature",
	tile_images = {"sonic_miniature_top.bmp", "sonic_miniature_down.bmp", "sonic_miniature_side.bmp", "sonic_miniature_side.bmp", "sonic_miniature_back.bmp", "sonic_miniature_front.bmp" },
	groups = {crumbly=3},
	paramtype2 = "facedir",
})
minetest.register_craft({
	output = '"retroblocks:sonic_miniature" 1',
	recipe = {
		{'wool:blue', 'wool:white', ''},
		{'wool:blue', 'wool:blue', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:sonic_tiki", {
	description = "Sonic 1 Tiki",
	tile_images = {"sonic_tiki_side.bmp", "sonic_tiki_top.bmp", "sonic_tiki_front.bmp"},
	groups = {choppy=2,oddly_breakable_by_hand=2},
    paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	output = '"retroblocks:sonic_tiki" 10',
	recipe = {
		{'default:wood', 'dye:green', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:question_block", {
	description = "SMB Question Block",
	tiles = {
		{name="smb_question_block_top_animated.bmp", "smb_question_block_animated.bmp", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1,5}},
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[15,15]"..
				"list[current_name;main;0,4;9,5;]"..
				"list[current_player;main;0,10;8,4;]")
		meta:set_string("infotext", "SMB Question Block")
		local inv = meta:get_inventory()
		inv:set_size("main", 1*1)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})




local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_craft({
	output = '"retroblocks:question_block" 1',
	recipe = {
		{'default:wood', 'retroblocks:smb_brick', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
		}
})
--Food And Items--

minetest.register_craftitem("retroblocks:smb_mushroom", {
	description = "SMB Mushroom",
	inventory_image = "smb_mushroom.bmp",
	on_use = minetest.item_eat(20)
})
minetest.register_craft({
	output = '"retroblocks:smb_mushroom" 1',
	recipe = {
		{'flowers:rose', 'flowers:rose', ''},
		{'flowers:rose', 'flowers:rose', ''},
		{'', '', ''},
		}
})
minetest.register_tool("retroblocks:smb_fire_flower", {
	description = "SMB Fire Flower",
	inventory_image = "smb_fire_flower.bmp",
	liquids_pointable = false,
	stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={flamable = {uses=500, maxlevel=1},
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		local snow_ice_list = {"snow", "ice",}
	
			for _, which_one_is_it in pairs(snow_ice_list) do
				local snow_ice = which_one_is_it
	
				if pointed_thing.type == "node"					
					and not string.find(minetest.get_node(pointed_thing.under).name, "snow")
					and not string.find(minetest.get_node(pointed_thing.under).name, "ice")
					and minetest.get_node(pointed_thing.above).name == "air"
				then
					if not minetest.is_protected(pointed_thing.above, user:get_player_name()) then
						minetest.set_node(pointed_thing.above, {name="fire:basic_flame"})						
					else
						minetest.chat_send_player(user:get_player_name(), "You can't use your flower in someone area")
					end
				elseif pointed_thing.type == "node"
					and string.find(minetest.get_node(pointed_thing.under).name,snow_ice)
					and minetest.get_node(pointed_thing.above).name == "air" then
						if not minetest.is_protected(pointed_thing.above, user:get_player_name()) then
							minetest.set_node(pointed_thing.above, {name="fire:basic_flame"})						
						else
							minetest.chat_send_player(user:get_player_name(), "You can't use your flower in someone area")
						end
				end
			end
		
			minetest.sound_play("", {gain = 1.0, max_hear_distance = 2,})
			itemstack:add_wear(100535/100)
			return itemstack
	end
})
minetest.register_craft({
	output = '"retroblocks:smb_fire_flower" 1',
	recipe = {
		{'flowers:dandelion_yellow', 'flowers:dandelion_yellow', ''},
		{'flowers:dandelion_white', 'flowers:dandelion_white', ''},
		{'', '', ''},
		}
})
minetest.register_craft({
	type = "fuel",
	recipe = "retroblocks:smb_fire_flower",
	burntime = 2400,
})
dofile(minetest.get_modpath("retroblocks") .. "/config.lua")
if racoon.fast == true then
    playereffects.register_effect_type("flyj", " Raccoon Time Avaible", "racoon.bmp", {"fly"},
        function(player)
            local playername = player:get_player_name()
            local privs = minetest.get_player_privs(playername)
            privs.fly = true
            privs.fast = true
            minetest.set_player_privs(playername, privs)
        end,
        function(effect, player)
            local privs = minetest.get_player_privs(effect.playername)
            privs.fly = nil
            privs.fast = nil
            minetest.set_player_privs(effect.playername, privs)
        end,
        false,
        false)
    else
        playereffects.register_effect_type("flyj", "Raccoon Power Avaible", "racoon.bmp", {"fly"},
            function(player)
                local playername = player:get_player_name()
                local privs = minetest.get_player_privs(playername)
                privs.fly = true
                minetest.set_player_privs(playername, privs)
            end,
            function(effect, player)
                local privs = minetest.get_player_privs(effect.playername)
                privs.fly = nil
                minetest.set_player_privs(effect.playername, privs)
            end,
            false,
            false)
end
minetest.register_craftitem("retroblocks:racoon", {
    description = "SMB 3 Raccoon Leaf",
    inventory_image = "racoon_inv.bmp",
    stack_max = 2,
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local privs = minetest.get_player_privs(playername)
        if privs.fly == true then
            minetest.chat_send_player(playername, "You already have The Raccoon power or Fly priv. you don't need this!")
        else
            playereffects.apply_effect_type("flyj", racoon.time, user)
            itemstack:take_item()
            return itemstack
        end
    end,
})
minetest.register_craft({
	output = 'retroblocks:racoon',
	recipe = {
		{'retroblocks:smb_fire_flower', '', ''},
		{'retroblocks:smb_mushroom', 'retroblocks:smb_mushroom', ''},
	    {'', '', ''},
	}
})
