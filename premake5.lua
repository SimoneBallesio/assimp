project "assimp"
	kind "StaticLib"
	language "C++"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Build/" .. outputdir .. "/%{prj.name}")

	files
	{
    "code/Common/**.h",
    "code/Common/**.cpp",
    "code/CApi/**.h",
    "code/CApi/**.cpp",
    "code/Material/**.h",
    "code/Material/**.cpp",
    "code/PostProcessing/**.h",
    "code/PostProcessing/**.cpp",
    "code/AssetLib/Obj/ObjTools.h",
    "code/AssetLib/Obj/ObjFileData.h",
    "code/AssetLib/Obj/ObjFileImporter.h",
    "code/AssetLib/Obj/ObjFileImporter.cpp",
    "code/AssetLib/Obj/ObjFileMtlImporter.h",
    "code/AssetLib/Obj/ObjFileMtlImporter.cpp",
    "code/AssetLib/Obj/ObjFileParser.h",
    "code/AssetLib/Obj/ObjFileParser.cpp",
    "code/AssetLib/STEPParser/**.h",
    "code/AssetLib/STEPParser/**.cpp",
    "contrib/clipper/clipper.hpp",
    "contrib/clipper/clipper.cpp",
    "contrib/openddlparser/include/**.h",
    "contrib/openddlparser/code/**.h",
    "contrib/openddlparser/code/**.cpp",
    "contrib/poly2tri/poly2tri.h",
    "contrib/poly2tri/poly2tri/common/utils.h",
    "contrib/poly2tri/poly2tri/common/shapes.h",
    "contrib/poly2tri/poly2tri/common/shapes.cc",
    "contrib/poly2tri/poly2tri/sweep/**.h",
    "contrib/poly2tri/poly2tri/sweep/**.cc",
    "contrib/utf8cpp/**.h",
    "contrib/unzip/**.h"
  }

  includedirs
  {
    "./",
    "code/",
    "contrib/",
    "include/",
    "contrib/rapidjson/include",
    "contrib/pugixml/src",
    "contrib/unzip",
    "contrib/zlib",
    "contrib/openddlparser/include"
  }
  
  defines
	{
      "ASSIMP_BUILD_DLL_EXPORT",
      "ASSIMP_BUILD_NO_3DS_EXPORTER",
      "ASSIMP_BUILD_NO_3DS_IMPORTER",
      "ASSIMP_BUILD_NO_3D_IMPORTER",
      "ASSIMP_BUILD_NO_3MF_EXPORTER",
      "ASSIMP_BUILD_NO_3MF_IMPORTER",
      "ASSIMP_BUILD_NO_AC_IMPORTER",
      "ASSIMP_BUILD_NO_AMF_IMPORTER",
      "ASSIMP_BUILD_NO_ASE_IMPORTER",
      "ASSIMP_BUILD_NO_ASSBIN_EXPORTER",
      "ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
      "ASSIMP_BUILD_NO_ASSJSON_EXPORTER",
      "ASSIMP_BUILD_NO_ASSXML_EXPORTER",
      "ASSIMP_BUILD_NO_B3D_IMPORTER",
      "ASSIMP_BUILD_NO_BLEND_IMPORTER",
      "ASSIMP_BUILD_NO_BVH_IMPORTER",
      "ASSIMP_BUILD_NO_C4D_IMPORTER",
      "ASSIMP_BUILD_NO_COB_IMPORTER",
      "ASSIMP_BUILD_NO_COLLADA_EXPORTER",
      "ASSIMP_BUILD_NO_COLLADA_IMPORTER",
      "ASSIMP_BUILD_NO_CSM_IMPORTER",
      "ASSIMP_BUILD_NO_DXF_IMPORTER",
      "ASSIMP_BUILD_NO_FBX_EXPORTER",
      "ASSIMP_BUILD_NO_FBX_IMPORTER",
      "ASSIMP_BUILD_NO_GLTF_EXPORTER",
      "ASSIMP_BUILD_NO_GLTF_IMPORTER",
      "ASSIMP_BUILD_NO_HMP_IMPORTER",
      "ASSIMP_BUILD_NO_IFC_IMPORTER",
      "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
      "ASSIMP_BUILD_NO_IRR_IMPORTER",
      "ASSIMP_BUILD_NO_LWO_IMPORTER",
      "ASSIMP_BUILD_NO_LWS_IMPORTER",
      "ASSIMP_BUILD_NO_M3D_EXPORTER",
      "ASSIMP_BUILD_NO_M3D_IMPORTER",
      "ASSIMP_BUILD_NO_MD2_IMPORTER",
      "ASSIMP_BUILD_NO_MD3_IMPORTER",
      "ASSIMP_BUILD_NO_MD5_IMPORTER",
      "ASSIMP_BUILD_NO_MDC_IMPORTER",
      "ASSIMP_BUILD_NO_MDL_IMPORTER",
      "ASSIMP_BUILD_NO_MMD_IMPORTER",
      "ASSIMP_BUILD_NO_MS3D_IMPORTER",
      "ASSIMP_BUILD_NO_NDO_IMPORTER",
      "ASSIMP_BUILD_NO_NFF_IMPORTER",
      -- "ASSIMP_BUILD_NO_OBJ_IMPORTER",
      "ASSIMP_BUILD_NO_OBJ_EXPORTER",
      "ASSIMP_BUILD_NO_OFF_IMPORTER",
      "ASSIMP_BUILD_NO_OGRE_IMPORTER",
      "ASSIMP_BUILD_NO_OPENGEX_EXPORTER",
      "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
      "ASSIMP_BUILD_NO_PLY_EXPORTER",
      "ASSIMP_BUILD_NO_PLY_IMPORTER",
      "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
      "ASSIMP_BUILD_NO_Q3D_IMPORTER",
      "ASSIMP_BUILD_NO_RAW_IMPORTER",
      "ASSIMP_BUILD_NO_SIB_IMPORTER",
      "ASSIMP_BUILD_NO_SMD_IMPORTER",
      "ASSIMP_BUILD_NO_STEP_EXPORTER",
      "ASSIMP_BUILD_NO_STL_EXPORTER",
      "ASSIMP_BUILD_NO_STL_IMPORTER",
      "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
      "ASSIMP_BUILD_NO_X3D_EXPORTER",
      "ASSIMP_BUILD_NO_X3D_IMPORTER",
      "ASSIMP_BUILD_NO_XGL_IMPORTER",
      "ASSIMP_BUILD_NO_X_EXPORTER",
      "ASSIMP_BUILD_NO_X_IMPORTER",
      "MINIZ_USE_UNALIGNED_LOADS_AND_STORES=0",
      "OPENDDLPARSER_BUILD",
      "RAPIDJSON_HAS_STDSTRING=1",
      "RAPIDJSON_NOMEMBERITERATORCLASS",
      "WIN32_LEAN_AND_MEAN",
      "_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"