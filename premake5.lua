--- premake5.lua = ImGui

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

	staticruntime "on"

	targetdir ("Binaries/" .. outputdirectory .. "/%{prj.name}")
	objdir ("Intermediate/" .. outputdirectory .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
        "imgui_tables.cpp",
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

    filter "configurations:Shipping"
		runtime "Release"
		optimize "speed"
        symbols "off"