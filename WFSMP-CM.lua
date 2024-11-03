core.register_craftitem("mr:synthesized_rubber", {
    description = "Synthesized Rubber",
    inventory_image = "synthesized_rubber.png"
})
core.register_craftitem("mr:rubber_latex" , {
    description = "Rubber Latex",
    inventory_image = "rubber_latex.png"
})
core.register_craftitem("mr:rubber_latex_mix", {
    description = "Rubber Latex Mix",
    inventory_image = "rubber_latex_mix.png"
})

core.register_craft({
    type = "shaped",
    output = "mr:synthesized_rubber",
    recipe = {
        {"group:leaves","group:sapling","group:leaves"},
        {"group:sapling","groups:seed","group:sapling"},
        {"group:leaves","group:sapling","group:leaves"},
    },
})
core.register_craft({
    type = "shapeless",
    output = "mr:rubber_latex_mix",
    recipe = {"mr:rubber_latex","mr:rubber_latex","mr:rubber_latex","mr:rubber_latex"}
})


technic.register_extractor_recipe({input = {"mr:synthesized_rubber"}, output = "mr:rubber_latex"})
technic.register_grinder_recipe({input = {"mr:rubber_latex_mix"}, output = "technic:rubber"})