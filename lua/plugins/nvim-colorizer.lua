local colorizer_setup = pcall(require,"ColorizerAttachToBuffer")

if not colorizer_setup then
	print("colorizer not found")
	return
end
