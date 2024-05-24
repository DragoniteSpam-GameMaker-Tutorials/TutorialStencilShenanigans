draw_clear_stencil(0);

gpu_set_stencil_enable(true);
gpu_set_stencil_write_mask(1);
gpu_set_stencil_pass(stencilop_replace);

gpu_set_alphatestenable(true);
gpu_set_alphatestref(127);
gpu_set_colorwriteenable(false, false, false, false);
draw_sprite(spr_gm_logo, 0, 0, 0);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_alphatestenable(false);

gpu_set_stencil_ref(1);
gpu_set_stencil_read_mask(1);
gpu_set_stencil_pass(stencilop_keep);
gpu_set_stencil_func(cmpfunc_notequal);

draw_sprite_tiled(spr_matharoo, 0, 0, 0);
draw_sprite_tiled(spr_matharoo, 0, 64, 0);
draw_sprite_tiled(spr_matharoo, 0, 0, 64);
draw_sprite_tiled(spr_matharoo, 0, 64, 64);

gpu_set_stencil_enable(false);