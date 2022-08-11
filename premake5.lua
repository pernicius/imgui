-----------------------
-- [ PROJECT CONFIG] --
-----------------------
project "HeliosEngine.imgui"
	kind          "StaticLib"
	architecture  "x86_64"
	language      "C"
	cppdialect    "C++20"
	staticruntime "On"
	targetname     "imgui"
	
	targetdir ("%{wks.location}/bin/client/"   .. outputdir .. "/heliosengine/%{string.lower(prj.name)}")
	objdir    ("%{wks.location}/build/client/" .. outputdir .. "/heliosengine/%{string.lower(prj.name)}")
	
	files {
		"*.h",
		"*.cpp"
	}

	filter "system:linux"
		pic "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "On"
