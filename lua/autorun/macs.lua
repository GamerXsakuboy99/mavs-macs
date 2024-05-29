--[[

###### METROSTROI AUTOMATIC CURRENT SETTER [MACS] ########
Coded by GamerzXsakuzboy99
Primary use: Setting Voltage automaticlly per-map.

Copyrighted under CC BY-NC-ND 4.0 & https://creativecommons.org/licenses/by-nc-nd/4.0/

--]]
timer.Simple(0.5, function()
    if not Metrostroi then return end
    MsgC(Color(255, 0, 0), "[MAVS] Scaning for the current map to set the current_limit.")
    MsgC(Color(120, 220, 100, 255), "This script has been made for Metrostroi Europe server and relased later for public usage.")
    MsgC(Color(120, 220, 100, 255), "This script is only downloadble from GamerzXsakuzboy99's GitHub account https://github.com/GamerXsakuboy99")
    MsgC(Color(120, 220, 100, 255), "Releasing this script to workshop & updating outside of GitHub Repostiory is not allowed, Please push updates via Pull requests :)")
    MsgC(Color(120, 220, 100, 255), "- GamerzXsakuzboy99")
    local map = game.GetMap() or ""
  
    local CurrentTbl = {
      ["gm_dnipro"] = 750,
      ["gm_jar_pll_remastered_v12"] = 820,
      ["gm_metro_jar_imagine_line_v4"] = 820,
      ["gm_metro_chapaevskaya_line_redux"] = 820,
      ["gm_metro_kalinin_v3"] = 820,
      ["gm_metro_nekrasovskaya_line_v5"] = 820,
      ["gm_metro_m3_new"] = 820,
      ["gm_budapest_m5"] = 820,
      ["gm_metro_minsk_1984"] = 820,
      ["gm_metro_mosldl_v1"] = 820,
      ["gm_metro_ndr_val_v2r1"] = 820,
      ["gm_metro_nsk_line_2_v6"] = 820,
      ["gm_metro_ruralline_v29"] = 800,
      ["gm_metro_ruralline_v29_old"] = 820,
      ["gm_metro_ruralline_v3"] = 800,
      ["gm_metro_ruralline_v4"] = 850,
      ["gm_metro_ruralline_v29_snow"] = 830,
      ["gm_metro_platform_doors_v1"] = 820,
      ["gm_metro_sunnytown_v2"] = 800,
      ["gm_metro_lichterfelde"] = 800,
      ["gm_metro_lichterfelde_nomirros"] = 800,
      ["gm_metro_blue_red_lines_v1"] = 820,
      ["gm_metro_u5"] = 820,
      ["gm_metro_u6"] = 820,
      ["gm_smr_1987"] = 820,
      ["gm_smr_first_line_v3"] = 800,
      ["gm_mus_loopline_e"] = 820,
      ["gm_mus_neoorange_e"] = 820,
      ["gm_mustox_neocrimson_line_a"] = 820,
      ["gm_metrostroi_b50"] = 820,
      ["gm_metronvl"] = 820,
      ["gm_metro_virus"] = 820,
      ["gm_metro_surfacemetro_w"] = 820,
      ["gm_metro_krl_v1"] = 820,
      ["gm_metro_prizmaaline_v3"] = 820,
      ["gm_metro_crossline_c4"] = 820,
      ["gm_metro_crossline_r199h"] = 820,
      ["gm_metro_crossline_n4a"] = 820
    } --Add new maps inside {}
  
    if not CurrentTbl[map] then return end
    local current = CurrentTbl[map]
    print("Found " .. (map or "invalid map, Using Default current limit.") .. ", Setting wagon limit to " .. CurrentTbl[map])
    RunConsoleCommand("metrostroi_current_limit", current)
  end)