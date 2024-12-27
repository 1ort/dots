require("utils.cmd")
return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            inlayHints = {
              typeHints = {
                enble = true,
              },
            },
            rustfmt = {
              extraArgs = {
                "--config",
                cmd_args({
                  unstable_features = true,
                  empty_item_single_line = false,
                  combine_control_expr = false,
                  fn_params_layout = "Vertical",
                  force_multiline_blocks = true,
                  group_imports = "StdExternalCrate",
                  single_line_let_else_max_width = "0",
                  struct_lit_single_line = false,
                  format_code_in_doc_comments = true,
                  match_block_trailing_comma = true,
                  use_field_init_shorthand = true,
                  imports_granularity = "Crate",
                  reorder_impl_items = true,
                }),
              },
            },
          },
        },
      },
    },
  },
}
