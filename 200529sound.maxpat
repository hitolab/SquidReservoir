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
		"rect" : [ 63.0, 196.0, 566.0, 480.0 ],
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
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 420.0, 64.0, 22.0 ],
					"text" : "maxuino a"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 380.0, 74.0, 22.0 ],
					"text" : "maxuino-gui",
					"varname" : "maxuino-gui"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 339.0, 440.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 312.0, 260.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 436.0, 93.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 436.0, 140.0, 33.0, 22.0 ],
					"text" : "* 90."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 426.0, 179.0, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 351.0, 221.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 344.0, 167.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.0, 111.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.0, 167.0, 39.0, 22.0 ],
					"text" : "set -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 118.0, 167.0, 20.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 118.0, 215.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 124.0, 130.0, 29.5, 22.0 ],
					"text" : "inc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 172.0, 14.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 108.0, 8.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 108.0, 87.0, 70.0, 22.0 ],
					"text" : "clocker 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 78.0, 15.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 14.0, 50.0, 22.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 61.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "square",
						"parameter_enable" : 0
					}
,
					"text" : "js square"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6::obj-643::obj-2" : [ "live.toggle[9]", "live.toggle", 0 ],
			"obj-6::obj-697::obj-10" : [ "live.toggle[97]", "live.toggle", 0 ],
			"obj-6::obj-692::obj-2" : [ "live.toggle[112]", "live.toggle", 0 ],
			"obj-6::obj-717::obj-480" : [ "pwm[42]", "pwm", 0 ],
			"obj-6::obj-768::obj-480" : [ "pwm[50]", "pwm", 0 ],
			"obj-6::obj-49::obj-5" : [ "A_in[4]", "A_in", 0 ],
			"obj-6::obj-656::obj-480" : [ "pwm[13]", "pwm", 0 ],
			"obj-6::obj-694::obj-11" : [ "live.toggle[107]", "live.toggle", 0 ],
			"obj-6::obj-712::obj-11" : [ "live.toggle[141]", "live.toggle", 0 ],
			"obj-6::obj-53::obj-5" : [ "A_in[8]", "A_in", 0 ],
			"obj-6::obj-644::obj-10" : [ "live.toggle[12]", "live.toggle", 0 ],
			"obj-6::obj-648::obj-480" : [ "pwm[8]", "pwm", 0 ],
			"obj-6::obj-678::obj-11" : [ "live.toggle[65]", "live.toggle", 0 ],
			"obj-6::obj-647::obj-11" : [ "live.toggle[21]", "live.toggle", 0 ],
			"obj-6::obj-650::obj-11" : [ "live.toggle[57]", "live.toggle", 0 ],
			"obj-6::obj-47::obj-2" : [ "analogOn[2]", "analogOn", 0 ],
			"obj-6::obj-641::obj-11" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-6::obj-656::obj-2" : [ "live.toggle[39]", "live.toggle", 0 ],
			"obj-6::obj-692::obj-480" : [ "pwm[37]", "pwm", 0 ],
			"obj-6::obj-45::obj-5" : [ "A_in", "A_in", 0 ],
			"obj-6::obj-645::obj-2" : [ "live.toggle[15]", "live.toggle", 0 ],
			"obj-6::obj-690::obj-2" : [ "live.toggle[119]", "live.toggle", 0 ],
			"obj-6::obj-715::obj-11" : [ "live.toggle[133]", "live.toggle", 0 ],
			"obj-6::obj-642::obj-480" : [ "pwm[2]", "pwm", 0 ],
			"obj-6::obj-687::obj-11" : [ "live.toggle[60]", "live.toggle", 0 ],
			"obj-6::obj-645::obj-11" : [ "live.toggle[16]", "live.toggle", 0 ],
			"obj-6::obj-658::obj-2" : [ "live.toggle[33]", "live.toggle", 0 ],
			"obj-6::obj-57::obj-2" : [ "analogOn[12]", "analogOn", 0 ],
			"obj-6::obj-674::obj-11" : [ "live.toggle[76]", "live.toggle", 0 ],
			"obj-6::obj-671::obj-480" : [ "pwm[28]", "pwm", 0 ],
			"obj-6::obj-693::obj-10" : [ "live.toggle[110]", "live.toggle", 0 ],
			"obj-6::obj-716::obj-11" : [ "live.toggle[129]", "live.toggle", 0 ],
			"obj-6::obj-710::obj-2" : [ "live.toggle[149]", "live.toggle", 0 ],
			"obj-6::obj-658::obj-480" : [ "pwm[11]", "pwm", 0 ],
			"obj-6::obj-677::obj-2" : [ "live.toggle[68]", "live.toggle", 0 ],
			"obj-6::obj-695::obj-480" : [ "pwm[34]", "pwm", 0 ],
			"obj-6::obj-694::obj-10" : [ "live.toggle[105]", "live.toggle", 0 ],
			"obj-6::obj-727::obj-10" : [ "live.toggle[122]", "live.toggle", 0 ],
			"obj-6::obj-758::obj-2" : [ "live.toggle[158]", "live.toggle", 0 ],
			"obj-6::obj-53::obj-2" : [ "analogOn[8]", "analogOn", 0 ],
			"obj-6::obj-649::obj-11" : [ "live.toggle[27]", "live.toggle", 0 ],
			"obj-6::obj-678::obj-2" : [ "live.toggle[63]", "live.toggle", 0 ],
			"obj-6::obj-673::obj-11" : [ "live.toggle[80]", "live.toggle", 0 ],
			"obj-6::obj-716::obj-2" : [ "live.toggle[131]", "live.toggle", 0 ],
			"obj-6::obj-59::obj-5" : [ "A_in[14]", "A_in", 0 ],
			"obj-35" : [ "live.gain~", "live.gain~", 0 ],
			"obj-6::obj-646::obj-2" : [ "live.toggle[19]", "live.toggle", 0 ],
			"obj-6::obj-670::obj-10" : [ "live.toggle[89]", "live.toggle", 0 ],
			"obj-6::obj-694::obj-2" : [ "live.toggle[106]", "live.toggle", 0 ],
			"obj-6::obj-727::obj-11" : [ "live.toggle[121]", "live.toggle", 0 ],
			"obj-6::obj-654::obj-2" : [ "live.toggle[45]", "live.toggle", 0 ],
			"obj-6::obj-678::obj-10" : [ "live.toggle[64]", "live.toggle", 0 ],
			"obj-6::obj-657::obj-10" : [ "live.toggle[37]", "live.toggle", 0 ],
			"obj-6::obj-693::obj-480" : [ "pwm[36]", "pwm", 0 ],
			"obj-6::obj-757::obj-11" : [ "live.toggle[161]", "live.toggle", 0 ],
			"obj-6::obj-690::obj-11" : [ "live.toggle[117]", "live.toggle", 0 ],
			"obj-6::obj-759::obj-11" : [ "live.toggle[153]", "live.toggle", 0 ],
			"obj-6::obj-52::obj-2" : [ "analogOn[7]", "analogOn", 0 ],
			"obj-6::obj-504::obj-2" : [ "live.toggle[1]", "live.toggle", 0 ],
			"obj-6::obj-674::obj-2" : [ "live.toggle[75]", "live.toggle", 0 ],
			"obj-6::obj-712::obj-2" : [ "live.toggle[143]", "live.toggle", 0 ],
			"obj-6::obj-667::obj-10" : [ "live.toggle[31]", "live.toggle", 0 ],
			"obj-6::obj-653::obj-2" : [ "live.toggle[48]", "live.toggle", 0 ],
			"obj-6::obj-671::obj-11" : [ "live.toggle[84]", "live.toggle", 0 ],
			"obj-6::obj-695::obj-2" : [ "live.toggle[102]", "live.toggle", 0 ],
			"obj-6::obj-690::obj-10" : [ "live.toggle[118]", "live.toggle", 0 ],
			"obj-6::obj-645::obj-480" : [ "pwm[5]", "pwm", 0 ],
			"obj-6::obj-717::obj-10" : [ "live.toggle[128]", "live.toggle", 0 ],
			"obj-6::obj-710::obj-11" : [ "live.toggle[147]", "live.toggle", 0 ],
			"obj-6::obj-51::obj-5" : [ "A_in[6]", "A_in", 0 ],
			"obj-6::obj-644::obj-480" : [ "pwm[4]", "pwm", 0 ],
			"obj-6::obj-676::obj-2" : [ "live.toggle[69]", "live.toggle", 0 ],
			"obj-6::obj-758::obj-11" : [ "live.toggle[156]", "live.toggle", 0 ],
			"obj-6::obj-55::obj-5" : [ "A_in[10]", "A_in", 0 ],
			"obj-6::obj-641::obj-2" : [ "live.toggle[5]", "live.toggle", 0 ],
			"obj-6::obj-673::obj-2" : [ "live.toggle[78]", "live.toggle", 0 ],
			"obj-6::obj-698::obj-2" : [ "live.toggle[95]", "live.toggle", 0 ],
			"obj-6::obj-711::obj-2" : [ "live.toggle[146]", "live.toggle", 0 ],
			"obj-6::obj-710::obj-10" : [ "live.toggle[148]", "live.toggle", 0 ],
			"obj-6::obj-51::obj-2" : [ "analogOn[6]", "analogOn", 0 ],
			"obj-6::obj-645::obj-10" : [ "live.toggle[17]", "live.toggle", 0 ],
			"obj-6::obj-676::obj-480" : [ "pwm[23]", "pwm", 0 ],
			"obj-6::obj-670::obj-2" : [ "live.toggle[87]", "live.toggle", 0 ],
			"obj-6::obj-718::obj-480" : [ "pwm[41]", "pwm", 0 ],
			"obj-6::obj-713::obj-11" : [ "live.toggle[138]", "live.toggle", 0 ],
			"obj-6::obj-758::obj-10" : [ "live.toggle[157]", "live.toggle", 0 ],
			"obj-6::obj-672::obj-480" : [ "pwm[27]", "pwm", 0 ],
			"obj-6::obj-697::obj-11" : [ "live.toggle[96]", "live.toggle", 0 ],
			"obj-6::obj-716::obj-10" : [ "live.toggle[130]", "live.toggle", 0 ],
			"obj-6::obj-58::obj-2" : [ "analogOn[13]", "analogOn", 0 ],
			"obj-6::obj-670::obj-480" : [ "pwm[29]", "pwm", 0 ],
			"obj-6::obj-694::obj-480" : [ "pwm[35]", "pwm", 0 ],
			"obj-6::obj-713::obj-2" : [ "live.toggle[140]", "live.toggle", 0 ],
			"obj-6::obj-642::obj-2" : [ "live.toggle[8]", "live.toggle", 0 ],
			"obj-6::obj-678::obj-480" : [ "pwm[21]", "pwm", 0 ],
			"obj-6::obj-47::obj-5" : [ "A_in[2]", "A_in", 0 ],
			"obj-6::obj-647::obj-480" : [ "pwm[7]", "pwm", 0 ],
			"obj-6::obj-657::obj-11" : [ "live.toggle[36]", "live.toggle", 0 ],
			"obj-6::obj-651::obj-11" : [ "live.toggle[56]", "live.toggle", 0 ],
			"obj-6::obj-675::obj-11" : [ "live.toggle[73]", "live.toggle", 0 ],
			"obj-6::obj-718::obj-10" : [ "live.toggle[124]", "live.toggle", 0 ],
			"obj-6::obj-713::obj-10" : [ "live.toggle[139]", "live.toggle", 0 ],
			"obj-6::obj-757::obj-2" : [ "live.toggle[160]", "live.toggle", 0 ],
			"obj-6::obj-48::obj-5" : [ "A_in[3]", "A_in", 0 ],
			"obj-6::obj-56::obj-5" : [ "A_in[11]", "A_in", 0 ],
			"obj-6::obj-643::obj-11" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-6::obj-672::obj-2" : [ "live.toggle[82]", "live.toggle", 0 ],
			"obj-6::obj-698::obj-480" : [ "pwm[31]", "pwm", 0 ],
			"obj-6::obj-696::obj-11" : [ "live.toggle[99]", "live.toggle", 0 ],
			"obj-6::obj-657::obj-2" : [ "live.toggle[38]", "live.toggle", 0 ],
			"obj-6::obj-651::obj-10" : [ "live.toggle[54]", "live.toggle", 0 ],
			"obj-6::obj-707::obj-10" : [ "live.toggle[91]", "live.toggle", 0 ],
			"obj-6::obj-712::obj-10" : [ "live.toggle[142]", "live.toggle", 0 ],
			"obj-6::obj-649::obj-480" : [ "pwm[9]", "pwm", 0 ],
			"obj-6::obj-687::obj-480" : [ "pwm[20]", "pwm", 0 ],
			"obj-6::obj-696::obj-2" : [ "live.toggle[101]", "live.toggle", 0 ],
			"obj-6::obj-690::obj-480" : [ "pwm[39]", "pwm", 0 ],
			"obj-6::obj-46::obj-2" : [ "analogOn[1]", "analogOn", 0 ],
			"obj-6::obj-647::obj-2" : [ "live.toggle[23]", "live.toggle", 0 ],
			"obj-6::obj-650::obj-2" : [ "live.toggle[59]", "live.toggle", 0 ],
			"obj-6::obj-716::obj-480" : [ "pwm[43]", "pwm", 0 ],
			"obj-6::obj-759::obj-480" : [ "pwm[51]", "pwm", 0 ],
			"obj-6::obj-667::obj-2" : [ "live.toggle[32]", "live.toggle", 0 ],
			"obj-6::obj-697::obj-480" : [ "pwm[32]", "pwm", 0 ],
			"obj-6::obj-641::obj-480" : [ "pwm[1]", "pwm", 0 ],
			"obj-6::obj-648::obj-2" : [ "live.toggle[24]", "live.toggle", 0 ],
			"obj-6::obj-656::obj-11" : [ "live.toggle[41]", "live.toggle", 0 ],
			"obj-6::obj-698::obj-10" : [ "live.toggle[94]", "live.toggle", 0 ],
			"obj-6::obj-711::obj-10" : [ "live.toggle[145]", "live.toggle", 0 ],
			"obj-6::obj-710::obj-480" : [ "pwm[49]", "pwm", 0 ],
			"obj-6::obj-644::obj-11" : [ "live.toggle[14]", "live.toggle", 0 ],
			"obj-6::obj-653::obj-11" : [ "live.toggle[50]", "live.toggle", 0 ],
			"obj-6::obj-695::obj-11" : [ "live.toggle[104]", "live.toggle", 0 ],
			"obj-6::obj-712::obj-480" : [ "pwm[47]", "pwm", 0 ],
			"obj-6::obj-758::obj-480" : [ "pwm[52]", "pwm", 0 ],
			"obj-6::obj-55::obj-2" : [ "analogOn[10]", "analogOn", 0 ],
			"obj-6::obj-648::obj-10" : [ "live.toggle[26]", "live.toggle", 0 ],
			"obj-6::obj-687::obj-2" : [ "live.toggle[62]", "live.toggle", 0 ],
			"obj-6::obj-717::obj-11" : [ "live.toggle[127]", "live.toggle", 0 ],
			"obj-6::obj-48::obj-2" : [ "analogOn[3]", "analogOn", 0 ],
			"obj-6::obj-57::obj-5" : [ "A_in[12]", "A_in", 0 ],
			"obj-6::obj-643::obj-10" : [ "live.toggle[11]", "live.toggle", 0 ],
			"obj-6::obj-648::obj-11" : [ "live.toggle[25]", "live.toggle", 0 ],
			"obj-6::obj-655::obj-2" : [ "live.toggle[44]", "live.toggle", 0 ],
			"obj-6::obj-691::obj-11" : [ "live.toggle[114]", "live.toggle", 0 ],
			"obj-6::obj-52::obj-5" : [ "A_in[7]", "A_in", 0 ],
			"obj-6::obj-504::obj-11" : [ "live.toggle", "live.toggle", 0 ],
			"obj-6::obj-652::obj-11" : [ "live.toggle[53]", "live.toggle", 0 ],
			"obj-6::obj-651::obj-2" : [ "live.toggle[55]", "live.toggle", 0 ],
			"obj-6::obj-675::obj-10" : [ "live.toggle[72]", "live.toggle", 0 ],
			"obj-6::obj-675::obj-480" : [ "pwm[24]", "pwm", 0 ],
			"obj-6::obj-63::obj-5" : [ "A_in[15]", "A_in", 0 ],
			"obj-6::obj-650::obj-480" : [ "pwm[19]", "pwm", 0 ],
			"obj-6::obj-672::obj-11" : [ "live.toggle[81]", "live.toggle", 0 ],
			"obj-6::obj-691::obj-2" : [ "live.toggle[116]", "live.toggle", 0 ],
			"obj-6::obj-768::obj-2" : [ "live.toggle[152]", "live.toggle", 0 ],
			"obj-6::obj-658::obj-11" : [ "live.toggle[34]", "live.toggle", 0 ],
			"obj-6::obj-651::obj-480" : [ "pwm[18]", "pwm", 0 ],
			"obj-6::obj-675::obj-2" : [ "live.toggle[74]", "live.toggle", 0 ],
			"obj-6::obj-670::obj-11" : [ "live.toggle[88]", "live.toggle", 0 ],
			"obj-6::obj-693::obj-11" : [ "live.toggle[108]", "live.toggle", 0 ],
			"obj-6::obj-713::obj-480" : [ "pwm[46]", "pwm", 0 ],
			"obj-6::obj-644::obj-2" : [ "live.toggle[13]", "live.toggle", 0 ],
			"obj-6::obj-667::obj-11" : [ "live.toggle[30]", "live.toggle", 0 ],
			"obj-6::obj-654::obj-10" : [ "live.toggle[47]", "live.toggle", 0 ],
			"obj-6::obj-677::obj-11" : [ "live.toggle[66]", "live.toggle", 0 ],
			"obj-6::obj-672::obj-10" : [ "live.toggle[83]", "live.toggle", 0 ],
			"obj-6::obj-49::obj-2" : [ "analogOn[4]", "analogOn", 0 ],
			"obj-6::obj-641::obj-10" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-6::obj-647::obj-10" : [ "live.toggle[22]", "live.toggle", 0 ],
			"obj-6::obj-650::obj-10" : [ "live.toggle[58]", "live.toggle", 0 ],
			"obj-6::obj-649::obj-2" : [ "live.toggle[29]", "live.toggle", 0 ],
			"obj-6::obj-654::obj-11" : [ "live.toggle[46]", "live.toggle", 0 ],
			"obj-6::obj-696::obj-10" : [ "live.toggle[100]", "live.toggle", 0 ],
			"obj-6::obj-714::obj-2" : [ "live.toggle[135]", "live.toggle", 0 ],
			"obj-6::obj-714::obj-480" : [ "pwm[45]", "pwm", 0 ],
			"obj-6::obj-759::obj-10" : [ "live.toggle[155]", "live.toggle", 0 ],
			"obj-6::obj-643::obj-480" : [ "pwm[3]", "pwm", 0 ],
			"obj-6::obj-656::obj-10" : [ "live.toggle[40]", "live.toggle", 0 ],
			"obj-6::obj-674::obj-10" : [ "live.toggle[77]", "live.toggle", 0 ],
			"obj-6::obj-698::obj-11" : [ "live.toggle[93]", "live.toggle", 0 ],
			"obj-6::obj-692::obj-10" : [ "live.toggle[111]", "live.toggle", 0 ],
			"obj-6::obj-718::obj-2" : [ "live.toggle[125]", "live.toggle", 0 ],
			"obj-6::obj-50::obj-5" : [ "A_in[5]", "A_in", 0 ],
			"obj-6::obj-653::obj-10" : [ "live.toggle[49]", "live.toggle", 0 ],
			"obj-6::obj-671::obj-2" : [ "live.toggle[86]", "live.toggle", 0 ],
			"obj-6::obj-695::obj-10" : [ "live.toggle[103]", "live.toggle", 0 ],
			"obj-6::obj-727::obj-2" : [ "live.toggle[120]", "live.toggle", 0 ],
			"obj-6::obj-714::obj-10" : [ "live.toggle[137]", "live.toggle", 0 ],
			"obj-6::obj-54::obj-5" : [ "A_in[9]", "A_in", 0 ],
			"obj-6::obj-652::obj-480" : [ "pwm[17]", "pwm", 0 ],
			"obj-6::obj-687::obj-10" : [ "live.toggle[61]", "live.toggle", 0 ],
			"obj-6::obj-707::obj-11" : [ "live.toggle[92]", "live.toggle", 0 ],
			"obj-6::obj-692::obj-11" : [ "live.toggle[113]", "live.toggle", 0 ],
			"obj-6::obj-50::obj-2" : [ "analogOn[5]", "analogOn", 0 ],
			"obj-6::obj-58::obj-5" : [ "A_in[13]", "A_in", 0 ],
			"obj-6::obj-657::obj-480" : [ "pwm[12]", "pwm", 0 ],
			"obj-6::obj-676::obj-10" : [ "live.toggle[71]", "live.toggle", 0 ],
			"obj-6::obj-63::obj-2" : [ "analogOn[15]", "analogOn", 0 ],
			"obj-6::obj-504::obj-480" : [ "pwm", "pwm", 0 ],
			"obj-6::obj-642::obj-10" : [ "live.toggle[7]", "live.toggle", 0 ],
			"obj-6::obj-646::obj-480" : [ "pwm[6]", "pwm", 0 ],
			"obj-6::obj-655::obj-11" : [ "live.toggle[43]", "live.toggle", 0 ],
			"obj-6::obj-768::obj-11" : [ "live.toggle[150]", "live.toggle", 0 ],
			"obj-6::obj-504::obj-10" : [ "live.toggle[2]", "live.toggle", 0 ],
			"obj-6::obj-652::obj-2" : [ "live.toggle[52]", "live.toggle", 0 ],
			"obj-6::obj-718::obj-11" : [ "live.toggle[123]", "live.toggle", 0 ],
			"obj-6::obj-711::obj-480" : [ "pwm[48]", "pwm", 0 ],
			"obj-6::obj-757::obj-10" : [ "live.toggle[159]", "live.toggle", 0 ],
			"obj-6::obj-649::obj-10" : [ "live.toggle[28]", "live.toggle", 0 ],
			"obj-6::obj-697::obj-2" : [ "live.toggle[98]", "live.toggle", 0 ],
			"obj-6::obj-691::obj-10" : [ "live.toggle[115]", "live.toggle", 0 ],
			"obj-6::obj-715::obj-2" : [ "live.toggle[132]", "live.toggle", 0 ],
			"obj-6::obj-768::obj-10" : [ "live.toggle[151]", "live.toggle", 0 ],
			"obj-6::obj-45::obj-2" : [ "analogOn", "analogOn", 0 ],
			"obj-6::obj-46::obj-5" : [ "A_in[1]", "A_in", 0 ],
			"obj-6::obj-676::obj-11" : [ "live.toggle[70]", "live.toggle", 0 ],
			"obj-6::obj-707::obj-2" : [ "live.toggle[90]", "live.toggle", 0 ],
			"obj-6::obj-653::obj-480" : [ "pwm[16]", "pwm", 0 ],
			"obj-6::obj-673::obj-10" : [ "live.toggle[79]", "live.toggle", 0 ],
			"obj-6::obj-715::obj-10" : [ "live.toggle[134]", "live.toggle", 0 ],
			"obj-6::obj-59::obj-2" : [ "analogOn[14]", "analogOn", 0 ],
			"obj-6::obj-655::obj-480" : [ "pwm[14]", "pwm", 0 ],
			"obj-6::obj-693::obj-2" : [ "live.toggle[109]", "live.toggle", 0 ],
			"obj-6::obj-691::obj-480" : [ "pwm[38]", "pwm", 0 ],
			"obj-6::obj-717::obj-2" : [ "live.toggle[126]", "live.toggle", 0 ],
			"obj-6::obj-56::obj-2" : [ "analogOn[11]", "analogOn", 0 ],
			"obj-6::obj-677::obj-10" : [ "live.toggle[67]", "live.toggle", 0 ],
			"obj-6::obj-715::obj-480" : [ "pwm[44]", "pwm", 0 ],
			"obj-6::obj-759::obj-2" : [ "live.toggle[154]", "live.toggle", 0 ],
			"obj-6::obj-646::obj-11" : [ "live.toggle[20]", "live.toggle", 0 ],
			"obj-6::obj-674::obj-480" : [ "pwm[25]", "pwm", 0 ],
			"obj-6::obj-673::obj-480" : [ "pwm[26]", "pwm", 0 ],
			"obj-6::obj-711::obj-11" : [ "live.toggle[144]", "live.toggle", 0 ],
			"obj-6::obj-667::obj-480" : [ "pwm[10]", "pwm", 0 ],
			"obj-6::obj-654::obj-480" : [ "pwm[15]", "pwm", 0 ],
			"obj-6::obj-671::obj-10" : [ "live.toggle[85]", "live.toggle", 0 ],
			"obj-6::obj-696::obj-480" : [ "pwm[33]", "pwm", 0 ],
			"obj-6::obj-714::obj-11" : [ "live.toggle[136]", "live.toggle", 0 ],
			"obj-6::obj-727::obj-480" : [ "pwm[40]", "pwm", 0 ],
			"obj-6::obj-677::obj-480" : [ "pwm[22]", "pwm", 0 ],
			"obj-6::obj-54::obj-2" : [ "analogOn[9]", "analogOn", 0 ],
			"obj-6::obj-642::obj-11" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-6::obj-655::obj-10" : [ "live.toggle[42]", "live.toggle", 0 ],
			"obj-6::obj-757::obj-480" : [ "pwm[53]", "pwm", 0 ],
			"obj-6::obj-646::obj-10" : [ "live.toggle[18]", "live.toggle", 0 ],
			"obj-6::obj-658::obj-10" : [ "live.toggle[35]", "live.toggle", 0 ],
			"obj-6::obj-652::obj-10" : [ "live.toggle[51]", "live.toggle", 0 ],
			"obj-6::obj-707::obj-480" : [ "pwm[30]", "pwm", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-6::obj-643::obj-2" : 				{
					"parameter_longname" : "live.toggle[9]"
				}
,
				"obj-6::obj-697::obj-10" : 				{
					"parameter_longname" : "live.toggle[97]"
				}
,
				"obj-6::obj-692::obj-2" : 				{
					"parameter_longname" : "live.toggle[112]"
				}
,
				"obj-6::obj-717::obj-480" : 				{
					"parameter_longname" : "pwm[42]"
				}
,
				"obj-6::obj-768::obj-480" : 				{
					"parameter_longname" : "pwm[50]"
				}
,
				"obj-6::obj-49::obj-5" : 				{
					"parameter_longname" : "A_in[4]"
				}
,
				"obj-6::obj-656::obj-480" : 				{
					"parameter_longname" : "pwm[13]"
				}
,
				"obj-6::obj-694::obj-11" : 				{
					"parameter_longname" : "live.toggle[107]"
				}
,
				"obj-6::obj-712::obj-11" : 				{
					"parameter_longname" : "live.toggle[141]"
				}
,
				"obj-6::obj-53::obj-5" : 				{
					"parameter_longname" : "A_in[8]"
				}
,
				"obj-6::obj-644::obj-10" : 				{
					"parameter_longname" : "live.toggle[12]"
				}
,
				"obj-6::obj-648::obj-480" : 				{
					"parameter_longname" : "pwm[8]"
				}
,
				"obj-6::obj-678::obj-11" : 				{
					"parameter_longname" : "live.toggle[65]"
				}
,
				"obj-6::obj-647::obj-11" : 				{
					"parameter_longname" : "live.toggle[21]"
				}
,
				"obj-6::obj-650::obj-11" : 				{
					"parameter_longname" : "live.toggle[57]"
				}
,
				"obj-6::obj-47::obj-2" : 				{
					"parameter_longname" : "analogOn[2]"
				}
,
				"obj-6::obj-641::obj-11" : 				{
					"parameter_longname" : "live.toggle[3]"
				}
,
				"obj-6::obj-656::obj-2" : 				{
					"parameter_longname" : "live.toggle[39]"
				}
,
				"obj-6::obj-692::obj-480" : 				{
					"parameter_longname" : "pwm[37]"
				}
,
				"obj-6::obj-645::obj-2" : 				{
					"parameter_longname" : "live.toggle[15]"
				}
,
				"obj-6::obj-690::obj-2" : 				{
					"parameter_longname" : "live.toggle[119]"
				}
,
				"obj-6::obj-715::obj-11" : 				{
					"parameter_longname" : "live.toggle[133]"
				}
,
				"obj-6::obj-642::obj-480" : 				{
					"parameter_longname" : "pwm[2]"
				}
,
				"obj-6::obj-687::obj-11" : 				{
					"parameter_longname" : "live.toggle[60]"
				}
,
				"obj-6::obj-645::obj-11" : 				{
					"parameter_longname" : "live.toggle[16]"
				}
,
				"obj-6::obj-658::obj-2" : 				{
					"parameter_longname" : "live.toggle[33]"
				}
,
				"obj-6::obj-57::obj-2" : 				{
					"parameter_longname" : "analogOn[12]"
				}
,
				"obj-6::obj-674::obj-11" : 				{
					"parameter_longname" : "live.toggle[76]"
				}
,
				"obj-6::obj-671::obj-480" : 				{
					"parameter_longname" : "pwm[28]"
				}
,
				"obj-6::obj-693::obj-10" : 				{
					"parameter_longname" : "live.toggle[110]"
				}
,
				"obj-6::obj-716::obj-11" : 				{
					"parameter_longname" : "live.toggle[129]"
				}
,
				"obj-6::obj-710::obj-2" : 				{
					"parameter_longname" : "live.toggle[149]"
				}
,
				"obj-6::obj-658::obj-480" : 				{
					"parameter_longname" : "pwm[11]"
				}
,
				"obj-6::obj-677::obj-2" : 				{
					"parameter_longname" : "live.toggle[68]"
				}
,
				"obj-6::obj-695::obj-480" : 				{
					"parameter_longname" : "pwm[34]"
				}
,
				"obj-6::obj-694::obj-10" : 				{
					"parameter_longname" : "live.toggle[105]"
				}
,
				"obj-6::obj-727::obj-10" : 				{
					"parameter_longname" : "live.toggle[122]"
				}
,
				"obj-6::obj-758::obj-2" : 				{
					"parameter_longname" : "live.toggle[158]"
				}
,
				"obj-6::obj-53::obj-2" : 				{
					"parameter_longname" : "analogOn[8]"
				}
,
				"obj-6::obj-649::obj-11" : 				{
					"parameter_longname" : "live.toggle[27]"
				}
,
				"obj-6::obj-678::obj-2" : 				{
					"parameter_longname" : "live.toggle[63]"
				}
,
				"obj-6::obj-673::obj-11" : 				{
					"parameter_longname" : "live.toggle[80]"
				}
,
				"obj-6::obj-716::obj-2" : 				{
					"parameter_longname" : "live.toggle[131]"
				}
,
				"obj-6::obj-59::obj-5" : 				{
					"parameter_longname" : "A_in[14]"
				}
,
				"obj-6::obj-646::obj-2" : 				{
					"parameter_longname" : "live.toggle[19]"
				}
,
				"obj-6::obj-670::obj-10" : 				{
					"parameter_longname" : "live.toggle[89]"
				}
,
				"obj-6::obj-694::obj-2" : 				{
					"parameter_longname" : "live.toggle[106]"
				}
,
				"obj-6::obj-727::obj-11" : 				{
					"parameter_longname" : "live.toggle[121]"
				}
,
				"obj-6::obj-654::obj-2" : 				{
					"parameter_longname" : "live.toggle[45]"
				}
,
				"obj-6::obj-678::obj-10" : 				{
					"parameter_longname" : "live.toggle[64]"
				}
,
				"obj-6::obj-657::obj-10" : 				{
					"parameter_longname" : "live.toggle[37]"
				}
,
				"obj-6::obj-693::obj-480" : 				{
					"parameter_longname" : "pwm[36]"
				}
,
				"obj-6::obj-757::obj-11" : 				{
					"parameter_longname" : "live.toggle[161]"
				}
,
				"obj-6::obj-690::obj-11" : 				{
					"parameter_longname" : "live.toggle[117]"
				}
,
				"obj-6::obj-759::obj-11" : 				{
					"parameter_longname" : "live.toggle[153]"
				}
,
				"obj-6::obj-52::obj-2" : 				{
					"parameter_longname" : "analogOn[7]"
				}
,
				"obj-6::obj-674::obj-2" : 				{
					"parameter_longname" : "live.toggle[75]"
				}
,
				"obj-6::obj-712::obj-2" : 				{
					"parameter_longname" : "live.toggle[143]"
				}
,
				"obj-6::obj-667::obj-10" : 				{
					"parameter_longname" : "live.toggle[31]"
				}
,
				"obj-6::obj-653::obj-2" : 				{
					"parameter_longname" : "live.toggle[48]"
				}
,
				"obj-6::obj-671::obj-11" : 				{
					"parameter_longname" : "live.toggle[84]"
				}
,
				"obj-6::obj-695::obj-2" : 				{
					"parameter_longname" : "live.toggle[102]"
				}
,
				"obj-6::obj-690::obj-10" : 				{
					"parameter_longname" : "live.toggle[118]"
				}
,
				"obj-6::obj-645::obj-480" : 				{
					"parameter_longname" : "pwm[5]"
				}
,
				"obj-6::obj-717::obj-10" : 				{
					"parameter_longname" : "live.toggle[128]"
				}
,
				"obj-6::obj-710::obj-11" : 				{
					"parameter_longname" : "live.toggle[147]"
				}
,
				"obj-6::obj-51::obj-5" : 				{
					"parameter_longname" : "A_in[6]"
				}
,
				"obj-6::obj-644::obj-480" : 				{
					"parameter_longname" : "pwm[4]"
				}
,
				"obj-6::obj-676::obj-2" : 				{
					"parameter_longname" : "live.toggle[69]"
				}
,
				"obj-6::obj-758::obj-11" : 				{
					"parameter_longname" : "live.toggle[156]"
				}
,
				"obj-6::obj-55::obj-5" : 				{
					"parameter_longname" : "A_in[10]"
				}
,
				"obj-6::obj-641::obj-2" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-6::obj-673::obj-2" : 				{
					"parameter_longname" : "live.toggle[78]"
				}
,
				"obj-6::obj-698::obj-2" : 				{
					"parameter_longname" : "live.toggle[95]"
				}
,
				"obj-6::obj-711::obj-2" : 				{
					"parameter_longname" : "live.toggle[146]"
				}
,
				"obj-6::obj-710::obj-10" : 				{
					"parameter_longname" : "live.toggle[148]"
				}
,
				"obj-6::obj-51::obj-2" : 				{
					"parameter_longname" : "analogOn[6]"
				}
,
				"obj-6::obj-645::obj-10" : 				{
					"parameter_longname" : "live.toggle[17]"
				}
,
				"obj-6::obj-676::obj-480" : 				{
					"parameter_longname" : "pwm[23]"
				}
,
				"obj-6::obj-670::obj-2" : 				{
					"parameter_longname" : "live.toggle[87]"
				}
,
				"obj-6::obj-718::obj-480" : 				{
					"parameter_longname" : "pwm[41]"
				}
,
				"obj-6::obj-713::obj-11" : 				{
					"parameter_longname" : "live.toggle[138]"
				}
,
				"obj-6::obj-758::obj-10" : 				{
					"parameter_longname" : "live.toggle[157]"
				}
,
				"obj-6::obj-672::obj-480" : 				{
					"parameter_longname" : "pwm[27]"
				}
,
				"obj-6::obj-697::obj-11" : 				{
					"parameter_longname" : "live.toggle[96]"
				}
,
				"obj-6::obj-716::obj-10" : 				{
					"parameter_longname" : "live.toggle[130]"
				}
,
				"obj-6::obj-58::obj-2" : 				{
					"parameter_longname" : "analogOn[13]"
				}
,
				"obj-6::obj-670::obj-480" : 				{
					"parameter_longname" : "pwm[29]"
				}
,
				"obj-6::obj-694::obj-480" : 				{
					"parameter_longname" : "pwm[35]"
				}
,
				"obj-6::obj-713::obj-2" : 				{
					"parameter_longname" : "live.toggle[140]"
				}
,
				"obj-6::obj-642::obj-2" : 				{
					"parameter_longname" : "live.toggle[8]"
				}
,
				"obj-6::obj-678::obj-480" : 				{
					"parameter_longname" : "pwm[21]"
				}
,
				"obj-6::obj-47::obj-5" : 				{
					"parameter_longname" : "A_in[2]"
				}
,
				"obj-6::obj-647::obj-480" : 				{
					"parameter_longname" : "pwm[7]"
				}
,
				"obj-6::obj-657::obj-11" : 				{
					"parameter_longname" : "live.toggle[36]"
				}
,
				"obj-6::obj-651::obj-11" : 				{
					"parameter_longname" : "live.toggle[56]"
				}
,
				"obj-6::obj-675::obj-11" : 				{
					"parameter_longname" : "live.toggle[73]"
				}
,
				"obj-6::obj-718::obj-10" : 				{
					"parameter_longname" : "live.toggle[124]"
				}
,
				"obj-6::obj-713::obj-10" : 				{
					"parameter_longname" : "live.toggle[139]"
				}
,
				"obj-6::obj-757::obj-2" : 				{
					"parameter_longname" : "live.toggle[160]"
				}
,
				"obj-6::obj-48::obj-5" : 				{
					"parameter_longname" : "A_in[3]"
				}
,
				"obj-6::obj-56::obj-5" : 				{
					"parameter_longname" : "A_in[11]"
				}
,
				"obj-6::obj-643::obj-11" : 				{
					"parameter_longname" : "live.toggle[10]"
				}
,
				"obj-6::obj-672::obj-2" : 				{
					"parameter_longname" : "live.toggle[82]"
				}
,
				"obj-6::obj-698::obj-480" : 				{
					"parameter_longname" : "pwm[31]"
				}
,
				"obj-6::obj-696::obj-11" : 				{
					"parameter_longname" : "live.toggle[99]"
				}
,
				"obj-6::obj-657::obj-2" : 				{
					"parameter_longname" : "live.toggle[38]"
				}
,
				"obj-6::obj-651::obj-10" : 				{
					"parameter_longname" : "live.toggle[54]"
				}
,
				"obj-6::obj-707::obj-10" : 				{
					"parameter_longname" : "live.toggle[91]"
				}
,
				"obj-6::obj-712::obj-10" : 				{
					"parameter_longname" : "live.toggle[142]"
				}
,
				"obj-6::obj-649::obj-480" : 				{
					"parameter_longname" : "pwm[9]"
				}
,
				"obj-6::obj-687::obj-480" : 				{
					"parameter_longname" : "pwm[20]"
				}
,
				"obj-6::obj-696::obj-2" : 				{
					"parameter_longname" : "live.toggle[101]"
				}
,
				"obj-6::obj-690::obj-480" : 				{
					"parameter_longname" : "pwm[39]"
				}
,
				"obj-6::obj-46::obj-2" : 				{
					"parameter_longname" : "analogOn[1]"
				}
,
				"obj-6::obj-647::obj-2" : 				{
					"parameter_longname" : "live.toggle[23]"
				}
,
				"obj-6::obj-650::obj-2" : 				{
					"parameter_longname" : "live.toggle[59]"
				}
,
				"obj-6::obj-716::obj-480" : 				{
					"parameter_longname" : "pwm[43]"
				}
,
				"obj-6::obj-759::obj-480" : 				{
					"parameter_longname" : "pwm[51]"
				}
,
				"obj-6::obj-667::obj-2" : 				{
					"parameter_longname" : "live.toggle[32]"
				}
,
				"obj-6::obj-697::obj-480" : 				{
					"parameter_longname" : "pwm[32]"
				}
,
				"obj-6::obj-641::obj-480" : 				{
					"parameter_longname" : "pwm[1]"
				}
,
				"obj-6::obj-648::obj-2" : 				{
					"parameter_longname" : "live.toggle[24]"
				}
,
				"obj-6::obj-656::obj-11" : 				{
					"parameter_longname" : "live.toggle[41]"
				}
,
				"obj-6::obj-698::obj-10" : 				{
					"parameter_longname" : "live.toggle[94]"
				}
,
				"obj-6::obj-711::obj-10" : 				{
					"parameter_longname" : "live.toggle[145]"
				}
,
				"obj-6::obj-710::obj-480" : 				{
					"parameter_longname" : "pwm[49]"
				}
,
				"obj-6::obj-644::obj-11" : 				{
					"parameter_longname" : "live.toggle[14]"
				}
,
				"obj-6::obj-653::obj-11" : 				{
					"parameter_longname" : "live.toggle[50]"
				}
,
				"obj-6::obj-695::obj-11" : 				{
					"parameter_longname" : "live.toggle[104]"
				}
,
				"obj-6::obj-712::obj-480" : 				{
					"parameter_longname" : "pwm[47]"
				}
,
				"obj-6::obj-758::obj-480" : 				{
					"parameter_longname" : "pwm[52]"
				}
,
				"obj-6::obj-55::obj-2" : 				{
					"parameter_longname" : "analogOn[10]"
				}
,
				"obj-6::obj-648::obj-10" : 				{
					"parameter_longname" : "live.toggle[26]"
				}
,
				"obj-6::obj-687::obj-2" : 				{
					"parameter_longname" : "live.toggle[62]"
				}
,
				"obj-6::obj-717::obj-11" : 				{
					"parameter_longname" : "live.toggle[127]"
				}
,
				"obj-6::obj-48::obj-2" : 				{
					"parameter_longname" : "analogOn[3]"
				}
,
				"obj-6::obj-57::obj-5" : 				{
					"parameter_longname" : "A_in[12]"
				}
,
				"obj-6::obj-643::obj-10" : 				{
					"parameter_longname" : "live.toggle[11]"
				}
,
				"obj-6::obj-648::obj-11" : 				{
					"parameter_longname" : "live.toggle[25]"
				}
,
				"obj-6::obj-655::obj-2" : 				{
					"parameter_longname" : "live.toggle[44]"
				}
,
				"obj-6::obj-691::obj-11" : 				{
					"parameter_longname" : "live.toggle[114]"
				}
,
				"obj-6::obj-52::obj-5" : 				{
					"parameter_longname" : "A_in[7]"
				}
,
				"obj-6::obj-652::obj-11" : 				{
					"parameter_longname" : "live.toggle[53]"
				}
,
				"obj-6::obj-651::obj-2" : 				{
					"parameter_longname" : "live.toggle[55]"
				}
,
				"obj-6::obj-675::obj-10" : 				{
					"parameter_longname" : "live.toggle[72]"
				}
,
				"obj-6::obj-675::obj-480" : 				{
					"parameter_longname" : "pwm[24]"
				}
,
				"obj-6::obj-63::obj-5" : 				{
					"parameter_longname" : "A_in[15]"
				}
,
				"obj-6::obj-650::obj-480" : 				{
					"parameter_longname" : "pwm[19]"
				}
,
				"obj-6::obj-672::obj-11" : 				{
					"parameter_longname" : "live.toggle[81]"
				}
,
				"obj-6::obj-691::obj-2" : 				{
					"parameter_longname" : "live.toggle[116]"
				}
,
				"obj-6::obj-768::obj-2" : 				{
					"parameter_longname" : "live.toggle[152]"
				}
,
				"obj-6::obj-658::obj-11" : 				{
					"parameter_longname" : "live.toggle[34]"
				}
,
				"obj-6::obj-651::obj-480" : 				{
					"parameter_longname" : "pwm[18]"
				}
,
				"obj-6::obj-675::obj-2" : 				{
					"parameter_longname" : "live.toggle[74]"
				}
,
				"obj-6::obj-670::obj-11" : 				{
					"parameter_longname" : "live.toggle[88]"
				}
,
				"obj-6::obj-693::obj-11" : 				{
					"parameter_longname" : "live.toggle[108]"
				}
,
				"obj-6::obj-713::obj-480" : 				{
					"parameter_longname" : "pwm[46]"
				}
,
				"obj-6::obj-644::obj-2" : 				{
					"parameter_longname" : "live.toggle[13]"
				}
,
				"obj-6::obj-667::obj-11" : 				{
					"parameter_longname" : "live.toggle[30]"
				}
,
				"obj-6::obj-654::obj-10" : 				{
					"parameter_longname" : "live.toggle[47]"
				}
,
				"obj-6::obj-677::obj-11" : 				{
					"parameter_longname" : "live.toggle[66]"
				}
,
				"obj-6::obj-672::obj-10" : 				{
					"parameter_longname" : "live.toggle[83]"
				}
,
				"obj-6::obj-49::obj-2" : 				{
					"parameter_longname" : "analogOn[4]"
				}
,
				"obj-6::obj-641::obj-10" : 				{
					"parameter_longname" : "live.toggle[4]"
				}
,
				"obj-6::obj-647::obj-10" : 				{
					"parameter_longname" : "live.toggle[22]"
				}
,
				"obj-6::obj-650::obj-10" : 				{
					"parameter_longname" : "live.toggle[58]"
				}
,
				"obj-6::obj-649::obj-2" : 				{
					"parameter_longname" : "live.toggle[29]"
				}
,
				"obj-6::obj-654::obj-11" : 				{
					"parameter_longname" : "live.toggle[46]"
				}
,
				"obj-6::obj-696::obj-10" : 				{
					"parameter_longname" : "live.toggle[100]"
				}
,
				"obj-6::obj-714::obj-2" : 				{
					"parameter_longname" : "live.toggle[135]"
				}
,
				"obj-6::obj-714::obj-480" : 				{
					"parameter_longname" : "pwm[45]"
				}
,
				"obj-6::obj-759::obj-10" : 				{
					"parameter_longname" : "live.toggle[155]"
				}
,
				"obj-6::obj-643::obj-480" : 				{
					"parameter_longname" : "pwm[3]"
				}
,
				"obj-6::obj-656::obj-10" : 				{
					"parameter_longname" : "live.toggle[40]"
				}
,
				"obj-6::obj-674::obj-10" : 				{
					"parameter_longname" : "live.toggle[77]"
				}
,
				"obj-6::obj-698::obj-11" : 				{
					"parameter_longname" : "live.toggle[93]"
				}
,
				"obj-6::obj-692::obj-10" : 				{
					"parameter_longname" : "live.toggle[111]"
				}
,
				"obj-6::obj-718::obj-2" : 				{
					"parameter_longname" : "live.toggle[125]"
				}
,
				"obj-6::obj-50::obj-5" : 				{
					"parameter_longname" : "A_in[5]"
				}
,
				"obj-6::obj-653::obj-10" : 				{
					"parameter_longname" : "live.toggle[49]"
				}
,
				"obj-6::obj-671::obj-2" : 				{
					"parameter_longname" : "live.toggle[86]"
				}
,
				"obj-6::obj-695::obj-10" : 				{
					"parameter_longname" : "live.toggle[103]"
				}
,
				"obj-6::obj-727::obj-2" : 				{
					"parameter_longname" : "live.toggle[120]"
				}
,
				"obj-6::obj-714::obj-10" : 				{
					"parameter_longname" : "live.toggle[137]"
				}
,
				"obj-6::obj-54::obj-5" : 				{
					"parameter_longname" : "A_in[9]"
				}
,
				"obj-6::obj-652::obj-480" : 				{
					"parameter_longname" : "pwm[17]"
				}
,
				"obj-6::obj-687::obj-10" : 				{
					"parameter_longname" : "live.toggle[61]"
				}
,
				"obj-6::obj-707::obj-11" : 				{
					"parameter_longname" : "live.toggle[92]"
				}
,
				"obj-6::obj-692::obj-11" : 				{
					"parameter_longname" : "live.toggle[113]"
				}
,
				"obj-6::obj-50::obj-2" : 				{
					"parameter_longname" : "analogOn[5]"
				}
,
				"obj-6::obj-58::obj-5" : 				{
					"parameter_longname" : "A_in[13]"
				}
,
				"obj-6::obj-657::obj-480" : 				{
					"parameter_longname" : "pwm[12]"
				}
,
				"obj-6::obj-676::obj-10" : 				{
					"parameter_longname" : "live.toggle[71]"
				}
,
				"obj-6::obj-63::obj-2" : 				{
					"parameter_longname" : "analogOn[15]"
				}
,
				"obj-6::obj-642::obj-10" : 				{
					"parameter_longname" : "live.toggle[7]"
				}
,
				"obj-6::obj-646::obj-480" : 				{
					"parameter_longname" : "pwm[6]"
				}
,
				"obj-6::obj-655::obj-11" : 				{
					"parameter_longname" : "live.toggle[43]"
				}
,
				"obj-6::obj-768::obj-11" : 				{
					"parameter_longname" : "live.toggle[150]"
				}
,
				"obj-6::obj-652::obj-2" : 				{
					"parameter_longname" : "live.toggle[52]"
				}
,
				"obj-6::obj-718::obj-11" : 				{
					"parameter_longname" : "live.toggle[123]"
				}
,
				"obj-6::obj-711::obj-480" : 				{
					"parameter_longname" : "pwm[48]"
				}
,
				"obj-6::obj-757::obj-10" : 				{
					"parameter_longname" : "live.toggle[159]"
				}
,
				"obj-6::obj-649::obj-10" : 				{
					"parameter_longname" : "live.toggle[28]"
				}
,
				"obj-6::obj-697::obj-2" : 				{
					"parameter_longname" : "live.toggle[98]"
				}
,
				"obj-6::obj-691::obj-10" : 				{
					"parameter_longname" : "live.toggle[115]"
				}
,
				"obj-6::obj-715::obj-2" : 				{
					"parameter_longname" : "live.toggle[132]"
				}
,
				"obj-6::obj-768::obj-10" : 				{
					"parameter_longname" : "live.toggle[151]"
				}
,
				"obj-6::obj-46::obj-5" : 				{
					"parameter_longname" : "A_in[1]"
				}
,
				"obj-6::obj-676::obj-11" : 				{
					"parameter_longname" : "live.toggle[70]"
				}
,
				"obj-6::obj-707::obj-2" : 				{
					"parameter_longname" : "live.toggle[90]"
				}
,
				"obj-6::obj-653::obj-480" : 				{
					"parameter_longname" : "pwm[16]"
				}
,
				"obj-6::obj-673::obj-10" : 				{
					"parameter_longname" : "live.toggle[79]"
				}
,
				"obj-6::obj-715::obj-10" : 				{
					"parameter_longname" : "live.toggle[134]"
				}
,
				"obj-6::obj-59::obj-2" : 				{
					"parameter_longname" : "analogOn[14]"
				}
,
				"obj-6::obj-655::obj-480" : 				{
					"parameter_longname" : "pwm[14]"
				}
,
				"obj-6::obj-693::obj-2" : 				{
					"parameter_longname" : "live.toggle[109]"
				}
,
				"obj-6::obj-691::obj-480" : 				{
					"parameter_longname" : "pwm[38]"
				}
,
				"obj-6::obj-717::obj-2" : 				{
					"parameter_longname" : "live.toggle[126]"
				}
,
				"obj-6::obj-56::obj-2" : 				{
					"parameter_longname" : "analogOn[11]"
				}
,
				"obj-6::obj-677::obj-10" : 				{
					"parameter_longname" : "live.toggle[67]"
				}
,
				"obj-6::obj-715::obj-480" : 				{
					"parameter_longname" : "pwm[44]"
				}
,
				"obj-6::obj-759::obj-2" : 				{
					"parameter_longname" : "live.toggle[154]"
				}
,
				"obj-6::obj-646::obj-11" : 				{
					"parameter_longname" : "live.toggle[20]"
				}
,
				"obj-6::obj-674::obj-480" : 				{
					"parameter_longname" : "pwm[25]"
				}
,
				"obj-6::obj-673::obj-480" : 				{
					"parameter_longname" : "pwm[26]"
				}
,
				"obj-6::obj-711::obj-11" : 				{
					"parameter_longname" : "live.toggle[144]"
				}
,
				"obj-6::obj-667::obj-480" : 				{
					"parameter_longname" : "pwm[10]"
				}
,
				"obj-6::obj-654::obj-480" : 				{
					"parameter_longname" : "pwm[15]"
				}
,
				"obj-6::obj-671::obj-10" : 				{
					"parameter_longname" : "live.toggle[85]"
				}
,
				"obj-6::obj-696::obj-480" : 				{
					"parameter_longname" : "pwm[33]"
				}
,
				"obj-6::obj-714::obj-11" : 				{
					"parameter_longname" : "live.toggle[136]"
				}
,
				"obj-6::obj-727::obj-480" : 				{
					"parameter_longname" : "pwm[40]"
				}
,
				"obj-6::obj-677::obj-480" : 				{
					"parameter_longname" : "pwm[22]"
				}
,
				"obj-6::obj-54::obj-2" : 				{
					"parameter_longname" : "analogOn[9]"
				}
,
				"obj-6::obj-642::obj-11" : 				{
					"parameter_longname" : "live.toggle[6]"
				}
,
				"obj-6::obj-655::obj-10" : 				{
					"parameter_longname" : "live.toggle[42]"
				}
,
				"obj-6::obj-757::obj-480" : 				{
					"parameter_longname" : "pwm[53]"
				}
,
				"obj-6::obj-646::obj-10" : 				{
					"parameter_longname" : "live.toggle[18]"
				}
,
				"obj-6::obj-658::obj-10" : 				{
					"parameter_longname" : "live.toggle[35]"
				}
,
				"obj-6::obj-652::obj-10" : 				{
					"parameter_longname" : "live.toggle[51]"
				}
,
				"obj-6::obj-707::obj-480" : 				{
					"parameter_longname" : "pwm[30]"
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "square.js",
				"bootpath" : "~/Desktop/伊藤研2019/レザバー",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-gui.maxpat",
				"bootpath" : "C74:/externals/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-Dpin-gui.maxpat",
				"bootpath" : "C74:/externals/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-hardware.txt",
				"bootpath" : "C74:/externals/max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-Apin-gui.maxpat",
				"bootpath" : "C74:/externals/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-gui.json",
				"bootpath" : "C74:/externals/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino.maxpat",
				"bootpath" : "C74:/externals/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino.js",
				"bootpath" : "C74:/externals/max",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
