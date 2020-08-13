project "unilib"
  kind "StaticLib"
  language "c++"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files {
    "unilib/**.cpp",
    "unilib/**.h"
  }

  filter "system:windows"
    systemversion "latest"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release"
    runtime "Release"
    optimize "on"