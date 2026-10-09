library(zurich2026)

my_tools <- list(
    tool_hello = ellmer::tool(
        fun = hello,
        description = "Say hello to the user.",
        arguments = list(
            my_name = ellmer::type_string("The name of the person to greet.")
        )
    )
)

mcptools::mcp_server(tools = my_tools)
