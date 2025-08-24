shader_type canvas_item;

#include "res://addons/shaderV/rgba/gradientMapping.gdshaderinc"

// Uniforms to expose in Inspector
uniform sampler2D palette; // Your palette texture (gradient strip)
uniform float grad_offset : hint_range(0.0, 1.0) = 0.0;
uniform bool use_color_cycle = true;

void fragment() {
    // Base color comes from whatever the Label (or sprite) is drawing
    vec4 base_col = texture(TEXTURE, UV);

    // Call your function from the include file
    vec4 mapped = _gradientMappingFunc(base_col.rgb, grad_offset, palette, use_color_cycle);

    COLOR = mapped * base_col.a; // Keep original alpha
}