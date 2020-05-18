{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1483.0, 164.0, 346.0, 306.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 163.5, 156.0, 71.0, 22.0 ],
					"text" : "swarm-spat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 163.5, 59.0, 77.0, 22.0 ],
					"text" : "swarm-synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 163.5, 21.0, 77.0, 22.0 ],
					"text" : "swarm-world"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.25, 21.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.25, 50.799997210502625, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.25, 93.799997210502625, 63.0, 22.0 ],
					"text" : "metro 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.25, 159.799997210502625, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 30.25, 128.799997210502625, 77.0, 22.0 ],
					"text" : "adstatus cpu"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-3::obj-25::obj-58" : [ "live.toggle[27]", "live.toggle", 0 ],
			"obj-3::obj-57::obj-6::obj-3" : [ "live.text[3]", "live.text", 0 ],
			"obj-3::obj-25::obj-56" : [ "live.toggle[29]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-85" : [ "live.toggle[22]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-83" : [ "live.toggle[24]", "live.toggle", 0 ],
			"obj-3::obj-5::obj-42" : [ "live.drop[2]", "live.drop", 0 ],
			"obj-3::obj-25::obj-26" : [ "live.toggle[47]", "live.toggle", 0 ],
			"obj-3::obj-5::obj-34" : [ "live.text[13]", "live.text", 0 ],
			"obj-3::obj-25::obj-139" : [ "live.toggle[18]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-22" : [ "live.toggle[30]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-14" : [ "live.dial[3]", "scale", 0 ],
			"obj-3::obj-95" : [ "live.toggle[48]", "live.toggle[2]", 0 ],
			"obj-3::obj-1" : [ "live.gain~[2]", "live.gain~[1]", 0 ],
			"obj-3::obj-25::obj-29" : [ "live.toggle[21]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-81" : [ "live.toggle[17]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-52" : [ "live.toggle[26]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-54" : [ "live.toggle[28]", "live.toggle", 0 ],
			"obj-3::obj-57::obj-58" : [ "live.text[5]", "live.text[9]", 0 ],
			"obj-3::obj-25::obj-131" : [ "live.toggle[31]", "live.toggle", 0 ],
			"obj-3::obj-57::obj-62" : [ "live.text[6]", "live.text[9]", 0 ],
			"obj-3::obj-5::obj-43" : [ "live.drop[3]", "live.drop", 0 ],
			"obj-3::obj-25::obj-67" : [ "live.toggle[25]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-82" : [ "live.toggle[20]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-102" : [ "live.toggle[19]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-2" : [ "live.toggle[16]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-11" : [ "live.toggle[23]", "live.toggle", 0 ],
			"obj-3::obj-57::obj-6::obj-6" : [ "live.text[4]", "live.text", 0 ],
			"obj-3::obj-25::obj-10" : [ "live.menu[3]", "live.toggle", 0 ],
			"obj-3::obj-25::obj-36::obj-62" : [ "live.text[14]", "live.text[9]", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-3::obj-25::obj-58" : 				{
					"parameter_longname" : "live.toggle[27]"
				}
,
				"obj-3::obj-57::obj-6::obj-3" : 				{
					"parameter_longname" : "live.text[3]"
				}
,
				"obj-3::obj-25::obj-56" : 				{
					"parameter_longname" : "live.toggle[29]"
				}
,
				"obj-3::obj-25::obj-85" : 				{
					"parameter_longname" : "live.toggle[22]"
				}
,
				"obj-3::obj-25::obj-83" : 				{
					"parameter_longname" : "live.toggle[24]"
				}
,
				"obj-3::obj-5::obj-42" : 				{
					"parameter_longname" : "live.drop[2]"
				}
,
				"obj-3::obj-25::obj-26" : 				{
					"parameter_longname" : "live.toggle[47]"
				}
,
				"obj-3::obj-5::obj-34" : 				{
					"parameter_longname" : "live.text[13]"
				}
,
				"obj-3::obj-25::obj-139" : 				{
					"parameter_longname" : "live.toggle[18]"
				}
,
				"obj-3::obj-25::obj-22" : 				{
					"parameter_longname" : "live.toggle[30]"
				}
,
				"obj-3::obj-25::obj-14" : 				{
					"parameter_longname" : "live.dial[3]"
				}
,
				"obj-3::obj-95" : 				{
					"parameter_longname" : "live.toggle[48]"
				}
,
				"obj-3::obj-1" : 				{
					"parameter_longname" : "live.gain~[2]"
				}
,
				"obj-3::obj-25::obj-29" : 				{
					"parameter_longname" : "live.toggle[21]"
				}
,
				"obj-3::obj-25::obj-81" : 				{
					"parameter_longname" : "live.toggle[17]"
				}
,
				"obj-3::obj-25::obj-52" : 				{
					"parameter_longname" : "live.toggle[26]"
				}
,
				"obj-3::obj-25::obj-54" : 				{
					"parameter_longname" : "live.toggle[28]"
				}
,
				"obj-3::obj-57::obj-58" : 				{
					"parameter_longname" : "live.text[5]"
				}
,
				"obj-3::obj-25::obj-131" : 				{
					"parameter_longname" : "live.toggle[31]"
				}
,
				"obj-3::obj-57::obj-62" : 				{
					"parameter_longname" : "live.text[6]"
				}
,
				"obj-3::obj-5::obj-43" : 				{
					"parameter_longname" : "live.drop[3]"
				}
,
				"obj-3::obj-25::obj-67" : 				{
					"parameter_longname" : "live.toggle[25]"
				}
,
				"obj-3::obj-25::obj-82" : 				{
					"parameter_longname" : "live.toggle[20]"
				}
,
				"obj-3::obj-25::obj-102" : 				{
					"parameter_longname" : "live.toggle[19]"
				}
,
				"obj-3::obj-25::obj-2" : 				{
					"parameter_longname" : "live.toggle[16]"
				}
,
				"obj-3::obj-25::obj-11" : 				{
					"parameter_longname" : "live.toggle[23]"
				}
,
				"obj-3::obj-57::obj-6::obj-6" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-3::obj-25::obj-10" : 				{
					"parameter_longname" : "live.menu[3]"
				}
,
				"obj-3::obj-25::obj-36::obj-62" : 				{
					"parameter_longname" : "live.text[14]"
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "swarm-world.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "draw-swarm.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "swarm-synth.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "swarm.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "boid-voice.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "swarm-spat.maxpat",
				"bootpath" : "~/Projects/spatial-audio",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.dsp.control.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Documents/Max 8/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.dsp.mute.bypass.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Documents/Max 8/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.presets.management.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Documents/Max 8/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.window.management.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Documents/Max 8/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.colorpicker.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Documents/Max 8/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.spat~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.sofa.loader.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.oper.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hostinfos.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.viewer.embedded.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
