return {
	"rainbowhxch/accelerated-jk.nvim",
	event = "BufEnter",
	opts = {
		mode = "time_driven",
		enable_deceleration = false,
		acceleration_motions = {},
		acceleration_limit = 250,
		acceleration_table = { 7, 12, 17, 21, 24, 26, 28, 30 },
	},
}
