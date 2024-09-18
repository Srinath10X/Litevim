local luasnip = require("luasnip")
local snippet = luasnip.snippet
local text_node = luasnip.text_node
local insert_node = luasnip.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("dart", {
  -- StatelessWidget Snippet
  snippet(
    "stl",
    fmt(
      [[
    class {} extends StatelessWidget {{
      const {}({{super.key}}); 

      @override
      Widget build(BuildContext context) {{
        return {};
      }}
    }}
    ]],
      {
        insert_node(1, "MyWidget"), -- Class name
        rep(1), -- Repeat
        insert_node(2, "const Placeholder()"), -- Title for the AppBar
      }
    )
  ),

  -- main snippet
  snippet(
    "main",
    fmt(
      [[
import 'package:flutter/material.dart';

void main() => runApp({}());

class {} extends StatelessWidget {{
	const {}({{super.key}}); 

	@override
	Widget build(BuildContext context) {{
		return MaterialApp({});
	}}
}} 
		]],
      { insert_node(1), rep(1), rep(1), insert_node(2) }
    )
  ),
})
