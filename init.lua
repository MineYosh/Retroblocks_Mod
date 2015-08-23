minetest.register_node("retroblocks:smb_brick", {
	description = "SMB Brick",
	tile_images = {"smb_brick.bmp"},
	groups = {cracky=3, stone=2},
})
minetest.register_craft({
	output = '"retroblocks:smb_brick" 78',
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
	output = '"retroblocks:sm64_star" 7',
	recipe = {
		{'default:mese_block', 'default:mese_block', ''},
		{'default:mese_block', 'default:mese_block', ''},
		{'', '', ''},
		}
})
minetest.register_node("retroblocks:smb_question_block", {
	description = "SMB Question Block",
	tile_images = {"smb_question_block.bmp", "smb_question_block_top.bmp"},
	groups = {crumbly=3},
    on_place = minetest.rotate_node
})
minetest.register_craft({
	output = '"retroblocks:smb_question_block" 7',
	recipe = {
		{'default:stonebrick', 'default:stonebrick', ''},
		{'default:stonebrick', 'default:stonebrick', ''},
		{'default:stonebrick', '', ''},
		}
})
