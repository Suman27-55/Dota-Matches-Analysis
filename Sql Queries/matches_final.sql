CREATE OR REPLACE TABLE
  `dota.matches_final` AS (
  WITH
    cte1 AS (
    SELECT
      match_id,
      (CASE
          WHEN "antimage" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS antimage,
      (CASE
          WHEN "axe" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS axe,
      (CASE
          WHEN "bane" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS bane,
      (CASE
          WHEN "bloodseeker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS bloodseeker,
      (CASE
          WHEN "crystal_maiden" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS crystal_maiden,
      (CASE
          WHEN "drow_ranger" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS drow_ranger,
      (CASE
          WHEN "earthshaker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS earthshaker,
      (CASE
          WHEN "juggernaut" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS juggernaut,
      (CASE
          WHEN "mirana" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS mirana,
      (CASE
          WHEN "morphling" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS morphling,
      (CASE
          WHEN "nevermore" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS shadowfiend,
      (CASE
          WHEN "phantom_lancer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS phantom_lancer,
      (CASE
          WHEN "puck" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS puck,
      (CASE
          WHEN "pudge" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS pudge,
      (CASE
          WHEN "razor" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS razor,
      (CASE
          WHEN "sand_king" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS sand_king,
      (CASE
          WHEN "storm_spirit" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS storm_spirit,
      (CASE
          WHEN "sven" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS sven,
      (CASE
          WHEN "tiny" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS tiny,
      (CASE
          WHEN "vengefulspirit" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS vengefulspirit,
      (CASE
          WHEN "windrunner" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS windrunner,
      (CASE
          WHEN "zuus" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS zuus,
      (CASE
          WHEN OR "kunkka" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS kunkka,
      (CASE
          WHEN "lina" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS lina,
      (CASE
          WHEN "lion" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS lion,
      (CASE
          WHEN "shadow_shaman" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS shadow_shaman,
      (CASE
          WHEN "slardar" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS slardar,
      (CASE
          WHEN "tidehunter" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS tidehunter,
      (CASE
          WHEN "witch_doctor" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS witch_doctor,
      (CASE
          WHEN "lich" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS lich,
      (CASE
          WHEN "riki" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS riki,
      (CASE
          WHEN "enigma" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS enigma,
      (CASE
          WHEN "tinker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS tinker,
      (CASE
          WHEN "sniper" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS sniper,
      (CASE
          WHEN "necrolyte" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS necrolyte,
      (CASE
          WHEN "warlock" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS warlock,
      (CASE
          WHEN "beastmaster" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS beastmaster,
      (CASE
          WHEN "queenofpain" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS queenofpain,
      (CASE
          WHEN "venomancer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS venomancer,
      (CASE
          WHEN "faceless_void" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS faceless_void,
      (CASE
          WHEN "skeleton_king" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS wraith_king,
      (CASE
          WHEN "death_prophet" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS death_prophet,
      (CASE
          WHEN "phantom_assassin" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS phantom_assassin,
      (CASE
          WHEN "pugna" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS pugna,
      (CASE
          WHEN "templar_assassin" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS templar_assassin,
      (CASE
          WHEN "viper" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS viper,
      (CASE
          WHEN "luna" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS luna,
      (CASE
          WHEN "dragon_knight" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS dragon_knight,
      (CASE
          WHEN "dazzle" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS dazzle,
      (CASE
          WHEN "rattletrap" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS clockwork,
      (CASE
          WHEN "leshrac" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS leshrac,
      (CASE
          WHEN "furion" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS natures_prophet,
      (CASE
          WHEN "life_stealer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS life_stealer,
      (CASE
          WHEN "dark_seer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS dark_seer,
      (CASE
          WHEN "clinkz" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS clinkz,
      (CASE
          WHEN "omniknight" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS omniknight,
      (CASE
          WHEN "enchantress" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS enchantress,
      (CASE
          WHEN "huskar" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS huskar,
      (CASE
          WHEN "night_stalker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS night_stalker,
      (CASE
          WHEN "broodmother" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS broodmother,
      (CASE
          WHEN "bounty_hunter" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS bounty_hunter,
      (CASE
          WHEN "weaver" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS weaver,
      (CASE
          WHEN "jakiro" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS jakiro,
      (CASE
          WHEN "batrider" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS batrider,
      (CASE
          WHEN "chen" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS chen,
      (CASE
          WHEN "spectre" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS spectre,
      (CASE
          WHEN "ancient_apparition" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS ancient_apparition,
      (CASE
          WHEN "doom_bringer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS doom_bringer,
      (CASE
          WHEN "ursa" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS ursa,
      (CASE
          WHEN "gyrocopter" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS gyrocopter,
      (CASE
          WHEN "alchemist" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS alchemist,
      (CASE
          WHEN "invoker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS invoker,
      (CASE
          WHEN "silencer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS silencer,
      (CASE
          WHEN "obsidian_destroyer" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS outworld_destroyer,
      (CASE
          WHEN "lycan" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS lycan,
      (CASE
          WHEN "brewmaster" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS brewmaster,
      (CASE
          WHEN "shadow_demon" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS shadow_demon,
      (CASE
          WHEN "lone_druid" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS lone_druid,
      (CASE
          WHEN "chaos_knight" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS chaos_knight,
      (CASE
          WHEN "meepo" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS meepo,
      (CASE
          WHEN "treant" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS treant_protector,
      (CASE
          WHEN "ogre_magi" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS ogre_magi,
      (CASE
          WHEN "undying" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS undying,
      (CASE
          WHEN "rubick" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS rubick,
      (CASE
          WHEN "disruptor" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS disruptor,
      (CASE
          WHEN "nyx_assassin" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS nyx_assassin,
      (CASE
          WHEN "naga_siren" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS naga_siren,
      (CASE
          WHEN "keeper_of_the_light" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS keeper_of_the_light,
      (CASE
          WHEN "wisp" IN UNNEST(names)THEN 1
          ELSE 0
      END
        ) AS io,
      (CASE
          WHEN "visage" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS visage,
      (CASE
          WHEN "slark" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS slark,
      (CASE
          WHEN "medusa" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS medusa,
      (CASE
          WHEN "troll_warlord" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS troll_warlord,
      (CASE
          WHEN "centaur" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS centaur_warrunner,
      (CASE
          WHEN "magnataur" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS magnus,
      (CASE
          WHEN "shredder" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS timbersaw,
      (CASE
          WHEN "bristleback" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS bristleback,
      (CASE
          WHEN "tusk" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS tusk,
      (CASE
          WHEN "skywrath_mage" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS skywrath_mage,
      (CASE
          WHEN "abaddon" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS abaddon,
      (CASE
          WHEN "elder_titan" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS elder_titan,
      (CASE
          WHEN "legion_commander" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS legion_commander,
      (CASE
          WHEN "techies" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS techies,
      (CASE
          WHEN "ember_spirit" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS ember_spirit,
      (CASE
          WHEN "earth_spirit" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS earth_spirit,
      (CASE
          WHEN "abyssal_underlord" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS underlord,
      (CASE
          WHEN "terrorblade" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS terrorblade,
      (CASE
          WHEN "phoenix" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS phoenix,
      (CASE
          WHEN "oracle" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS oracle,
      (CASE
          WHEN "winter_wyvern" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS winter_wyvern,
      (CASE
          WHEN "arc_warden" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS arc_warden,
      (CASE
          WHEN "monkey_king" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS monkey_king,
      (CASE
          WHEN "dark_willow" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS dark_willow,
      (CASE
          WHEN "pangolier" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS pangolier,
      (CASE
          WHEN "grimstroke" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS grimstroke,
      (CASE
          WHEN "hoodwink" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS hoodwink,
      (CASE
          WHEN "viod_spirit" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS void_spirit,
      (CASE
          WHEN "snapfire" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS snapfire,
      (CASE
          WHEN "mars" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS mars,
      (CASE
          WHEN "dawnbreaker" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS dawnbreaker,
      (CASE
          WHEN "marci" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS marci,
      (CASE
          WHEN "primal_beast" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS primal_beast,
      (CASE
          WHEN "muerta" IN UNNEST(names) THEN 1
          ELSE 0
      END
        ) AS muerta,
    FROM
      `dota-analytics-432907.dota.matches`),
    cte2 AS (
    SELECT
      match_id AS cte2_match_id,
      MAX(antimage) AS antimage,
      MAX(axe) AS axe,
      MAX(bane) AS bane,
      MAX(bloodseeker) AS bloodseeker,
      MAX(crystal_maiden) AS crystal_maiden,
      MAX(drow_ranger) AS drow_ranger,
      MAX(earthshaker) AS earthshaker,
      MAX(juggernaut) AS juggernaut,
      MAX(mirana) AS mirana,
      MAX(morphling) AS morhpling,
      MAX(shadowfiend) AS shadowfiend,
      MAX(phantom_lancer) AS phantom_lancer,
      MAX(puck) AS puck,
      MAX(pudge) AS pudge,
      MAX(razor) AS razor,
      MAX(sand_king) AS sand_king,
      MAX(storm_spirit) AS storm_spirit,
      MAX(sven) AS sven,
      MAX(tiny) AS tiny,
      MAX(vengefulspirit) AS vengefulspirit,
      MAX(windrunner) AS windrunner,
      MAX(zuus) AS zuus,
      MAX(kunkka) AS kunkka,
      MAX(lina) AS lina,
      MAX(lion) AS lion,
      MAX(shadow_shaman) AS shadow_shaman,
      MAX(slardar) AS slardar,
      MAX(tidehunter) AS tidehunter,
      MAX(witch_doctor) AS witch_doctor,
      MAX(lich) AS lich,
      MAX(riki) AS riki,
      MAX(enigma) AS enigma,
      MAX(tinker) AS tinker,
      MAX(sniper) AS sniper,
      MAX(necrolyte) AS necrolyte,
      MAX(warlock) AS warlock,
      MAX(beastmaster) AS beastmaster,
      MAX(queenofpain) AS queenofpain,
      MAX(venomancer) AS venomancer,
      MAX(faceless_void) AS faceless_void,
      MAX(wraith_king) AS wraith_king,
      MAX(death_prophet) AS death_prophet,
      MAX(phantom_assassin) AS phantom_assassin,
      MAX(pugna) AS pugna,
      MAX(templar_assassin) AS templar_assassin,
      MAX(viper) AS viper,
      MAX(luna) AS luna,
      MAX(dragon_knight) AS dragon_knight,
      MAX(dazzle) AS dazzle,
      MAX(clockwork) AS clockwork,
      MAX(leshrac) AS leshrac,
      MAX(natures_prophet) AS natures_prophet,
      MAX(life_stealer) AS life_stealer,
      MAX(dark_seer) AS dark_seer,
      MAX(clinkz) AS clinkz,
      MAX(omniknight) AS omniknight,
      MAX(enchantress) AS enchantress,
      MAX(huskar) AS huskar,
      MAX(night_stalker) AS night_stalker,
      MAX(broodmother) AS broodmother,
      MAX(bounty_hunter) AS bounty_hunter,
      MAX(weaver) AS weaver,
      MAX(jakiro) AS jakiro,
      MAX(batrider) AS batrider,
      MAX(chen) AS chen,
      MAX(spectre) AS spectre,
      MAX(ancient_apparition) AS ancient_apparition,
      MAX(doom_bringer) AS doom_bringer,
      MAX(ursa) AS ursa,
      MAX(gyrocopter) AS gyrocopter,
      MAX(alchemist) AS alchemist,
      MAX(invoker) AS invoker,
      MAX(silencer) AS silencer,
      MAX(outworld_destroyer) AS outworld_destroyer,
      MAX(lycan) AS lycan,
      MAX(brewmaster) AS brewmaster,
      MAX(shadow_demon) AS shadow_demon,
      MAX(lone_druid) AS lone_druid,
      MAX(chaos_knight) AS chaos_knight,
      MAX(meepo) AS meepo,
      MAX(treant_protector) AS treant_protector,
      MAX(ogre_magi) AS ogre_magi,
      MAX(undying) AS undying,
      MAX(rubick) AS rubick,
      MAX(disruptor) AS disruptor,
      MAX(nyx_assassin) AS nyx_assasin,
      MAX(naga_siren) AS naga_siren,
      MAX(keeper_of_the_light) AS keeper_of_the_light,
      MAX(io) AS io,
      MAX(visage) AS visage,
      MAX(slark) AS slark,
      MAX(medusa) AS medusa,
      MAX(troll_warlord) AS troll_warlord,
      MAX(centaur_warrunner) AS centaur_warrunner,
      MAX(magnus) AS magnus,
      MAX(timbersaw) AS timbersaw,
      MAX(bristleback) AS bristleback,
      MAX(tusk) AS tusk,
      MAX(skywrath_mage) AS skywrath_mage,
      MAX(abaddon) AS abaddon,
      MAX(elder_titan) AS elder_titan,
      MAX(legion_commander) AS legion_commander,
      MAX(techies) AS techies,
      MAX(ember_spirit) AS ember_spirit,
      MAX(earth_spirit) AS earth_spirit,
      MAX(underlord) AS underlord,
      MAX(terrorblade) AS terrorblade,
      MAX(phoenix) AS phoenix,
      MAX(oracle) AS oracle,
      MAX(winter_wyvern) AS winter_wyvern,
      MAX(arc_warden) AS arc_warden,
      MAX(monkey_king) AS monkey_king,
      MAX(dark_willow) AS dark_willow,
      MAX(pangolier) AS pangolier,
      MAX(grimstroke) AS grimstroke,
      MAX(hoodwink) AS hoodwink,
      MAX(void_spirit) AS void_spirit,
      MAX(snapfire) AS snapfire,
      MAX(mars) AS mars,
      MAX(dawnbreaker) AS dawnbreaker,
      MAX(marci) AS marci,
      MAX(primal_beast) AS primal_beast,
      MAX(muerta) AS muerta,
    FROM
      cte1
    GROUP BY
      match_id),
    cte3 AS (
    SELECT
      match_id AS cte3_match_id,
      (CASE
          WHEN ("antimage" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("antimage" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS antimage_win,
      (CASE
          WHEN ("axe" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("axe" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS axe_win,
      (CASE
          WHEN ("bane" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("bane" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS bane_win,
      (CASE
          WHEN ("bloodseeker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("bloodseeker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS bloodseeker_win,
      (CASE
          WHEN ("crystal_maiden" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("crystal_maiden" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS crystal_maiden_win,
      (CASE
          WHEN ("drow_ranger" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("drow_ranger" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS drow_ranger_win,
      (CASE
          WHEN ("earthshaker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("earthshaker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS earthshaker_win,
      (CASE
          WHEN ("juggernaut" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("juggernaut" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS juggernaut_win,
      (CASE
          WHEN ("mirana" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("mirana" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS mirana_win,
      (CASE
          WHEN ("morphling" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("morphling" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS morphling_win,
      (CASE
          WHEN ("nevermore" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("nevermore" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS shadow_fiend_win,
      (CASE
          WHEN ("phantom_lancer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("phantom_lancer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS phantom_lancer_win,
      (CASE
          WHEN ("puck" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("puck" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS puck_win,
      (CASE
          WHEN ("pudge" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("pudge" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS pudge_win,
      (CASE
          WHEN ("razor" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("razor" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS razor_win,
      (CASE
          WHEN ("sand_king" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("sand_king" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS sand_king_win,
      (CASE
          WHEN ("storm_spirit" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("storm_spirit" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS storm_spirit_win,
      (CASE
          WHEN ("sven" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("sven" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS sven_win,
      (CASE
          WHEN ("tiny" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("tiny" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS tiny_win,
      (CASE
          WHEN ("vengefulspirit" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("vengefulspirit" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS vengefulspirit_win,
      (CASE
          WHEN ("windrunner" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("windrunner" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS windrunner_win,
      (CASE
          WHEN ("zuus" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("zuus" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS zues_win,
      (CASE
          WHEN ("kunkka" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("kunkka" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS kunkka_win,
      (CASE
          WHEN ("lina" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("lina" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS lina_win,
      (CASE
          WHEN ("lion" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("lion" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS lion_win,
      (CASE
          WHEN ("shadow_shaman" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("shadow_shaman" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS shadow_shaman_win,
      (CASE
          WHEN ("slardar" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("slardar" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS slardar_win,
      (CASE
          WHEN ("tidehunter" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("tidehunter" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS tidehunter_win,
      (CASE
          WHEN ("witch_doctor" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("witch_doctor" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS witch_doctor_win,
      (CASE
          WHEN ("lich" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("lich" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS lich_win,
      (CASE
          WHEN ("riki" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("riki" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS riki_win,
      (CASE
          WHEN ("enigma" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("enigma" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS enigma_win,
      (CASE
          WHEN ("tinker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("tinker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS tinker_win,
      (CASE
          WHEN ("sniper" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("sniper" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS sniper_win,
      (CASE
          WHEN ("necrolyte" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("necrolyte" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS necrolyte_win,
      (CASE
          WHEN ("warlock" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("warlock" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS warlock_win,
      (CASE
          WHEN ("beastmaster" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("beastmaster" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS beastmaster_win,
      (CASE
          WHEN ("queenofpain" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("queenofpain" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS queenofpain_win,
      (CASE
          WHEN ("venomancer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("venomancer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS venomancer_win,
      (CASE
          WHEN ("faceless_void" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("faceless_void" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS faceless_void_win,
      (CASE
          WHEN ("skeleton_king" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("skeleton_king" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS wraith_king_win,
      (CASE
          WHEN ("death_prophet" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("death_prophet" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS death_prophet_win,
      (CASE
          WHEN ("phantom_assassin" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("phantom_assassin" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS phantom_assassin_win,
      (CASE
          WHEN ("pugna" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("pugna" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS pugna_win,
      (CASE
          WHEN ("templar_assassin" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("templar_assassin" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS templar_assassin_win,
      (CASE
          WHEN ("viper" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("viper" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS viper_win,
      (CASE
          WHEN ("luna" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("luna" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS luna_win,
      (CASE
          WHEN ("dragon_knight" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("dragon_knight" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS dragon_knight_win,
      (CASE
          WHEN ("dazzle" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("dazzle" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS dazzle_win,
      (CASE
          WHEN ("rattletrap" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("rattletrap" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS clockwerk_win,
      (CASE
          WHEN ("leshrac" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("leshrac" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS leshrac_win,
      (CASE
          WHEN ("furion" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("furion" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS natures_prophet_win,
      (CASE
          WHEN ("life_stealer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("life_stealer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS life_stealer_win,
      (CASE
          WHEN ("dark_seer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("dark_seer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS dark_seer_win,
      (CASE
          WHEN ("clinkz" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("clinkz" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS clinkz_win,
      (CASE
          WHEN ("omniknight" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("omniknight" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS omniknight_win,
      (CASE
          WHEN ("enchantress" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("enchantress" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS enchantress_win,
      (CASE
          WHEN ("huskar" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("huskar" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS huskar_win,
      (CASE
          WHEN ("night_stalker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("night_stalker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS night_stalker_win,
      (CASE
          WHEN ("broodmother" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("broodmother" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS broodmother_win,
      (CASE
          WHEN ("bounty_hunter" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("bounty_hunter" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS bounty_hunter_win,
      (CASE
          WHEN ("weaver" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("weaver" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS weaver_win,
      (CASE
          WHEN ("jakiro" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("jakiro" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS jakiro_win,
      (CASE
          WHEN ("batrider" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("batrider" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS batrider_win,
      (CASE
          WHEN ("chen" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("chen" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS chen_win,
      (CASE
          WHEN ("spectre" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("spectre" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS spectre_win,
      (CASE
          WHEN ("ancient_apparition" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("ancient_apparition" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS ancient_apparition_win,
      (CASE
          WHEN ("doom_bringer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("doom_bringer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS doom_bringer_win,
      (CASE
          WHEN ("ursa" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("ursa" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS ursa_win,
      (CASE
          WHEN ("spirit_breaker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("spirit_breaker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS spirit_breaker_win,
      (CASE
          WHEN ("gyrocopter" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("gyrocopter" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS gyrocopter_win,
      (CASE
          WHEN ("alchemist" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("alchemist" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS alchemist_win,
      (CASE
          WHEN ("invoker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("invoker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS invoker_win,
      (CASE
          WHEN ("silencer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("silencer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS silencer_win,
      (CASE
          WHEN ("obsidian_destroyer" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("obsidian_destroyer" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS outworld_destroyer_win,
      (CASE
          WHEN ("lycan" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("lycan" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS lycan_win,
      (CASE
          WHEN ("brewmaster" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("brewmaster" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS brewmaster_win,
      (CASE
          WHEN ("shadow_demon" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("shadow_demon" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS shadow_demon_win,
      (CASE
          WHEN ("lone_druid" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("lone_druid" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS lone_druid_win,
      (CASE
          WHEN ("chaos_knight" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("chaos_knight" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS chaos_knight_win,
      (CASE
          WHEN ("meepo" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("meepo" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS meepo_win,
      (CASE
          WHEN ("treant" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("treant" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS treant_win,
      (CASE
          WHEN ("ogre_magi" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("ogre_magi" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS ogre_magi_win,
      (CASE
          WHEN ("undying" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("undying" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS undying_win,
      (CASE
          WHEN ("rubick" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("rubick" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS rubick_win,
      (CASE
          WHEN ("disruptor" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("disruptor" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS disruptor_win,
      (CASE
          WHEN ("nyx_assassin" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("nyx_assassin" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS nyx_assassin_win,
      (CASE
          WHEN ("naga_siren" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("naga_siren" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS naga_siren_win,
      (CASE
          WHEN ("keeper_of_the_light" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("keeper_of_the_light" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS keeper_of_the_light_win,
      (CASE
          WHEN ("wisp" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("wisp" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS io_win,
      (CASE
          WHEN ("visage" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("visage" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS visage_win,
      (CASE
          WHEN ("slark" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("slark" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS slark_win,
      (CASE
          WHEN ("medusa" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("medusa" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS medusa_win,
      (CASE
          WHEN ("troll_warlord" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("troll_warlord" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS troll_warlord_win,
      (CASE
          WHEN ("centaur" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("centaur" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS centaur_win,
      (CASE
          WHEN ("magnataur" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("magnataur" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS magnataur_win,
      (CASE
          WHEN ("shredder" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("shredder" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS shredder_win,
      (CASE
          WHEN ("bristleback" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("bristleback" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS bristleback_win,
      (CASE
          WHEN ("tusk" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("tusk" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS tusk_win,
      (CASE
          WHEN ("skywrath_mage" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("skywrath_mage" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS skywrath_mage_win,
      (CASE
          WHEN ("abaddon" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("abaddon" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS abaddon_win,
      (CASE
          WHEN ("elder_titan" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("elder_titan" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS elder_titan_win,
      (CASE
          WHEN ("legion_commander" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("legion_commander" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS legion_commander_win,
      (CASE
          WHEN ("techies" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("techies" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS techies_win,
      (CASE
          WHEN ("ember_spirit" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("ember_spirit" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS ember_spirit_win,
      (CASE
          WHEN ("earth_spirit" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("earth_spirit" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS earth_spirit_win,
      (CASE
          WHEN ("abyssal_underlord" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("abyssal_underlord" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS underlord_win,
      (CASE
          WHEN ("terrorblade" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("terrorblade" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS terrorblade_win,
      (CASE
          WHEN ("phoenix" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("phoenix" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS phoenix_win,
      (CASE
          WHEN ("oracle" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("oracle" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS oracle_win,
      (CASE
          WHEN ("winter_wyvern" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("winter_wyvern" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS winter_wyvern_win,
      (CASE
          WHEN ("arc_warden" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("arc_warden" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS arc_warden_win,
      (CASE
          WHEN ("monkey_king" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("monkey_king" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS monkey_king_win,
      (CASE
          WHEN ("dark_willow" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("dark_willow" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS dark_willow_win,
      (CASE
          WHEN ("pangolier" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("pangolier" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS pangolier_win,
      (CASE
          WHEN ("grimstroke" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("grimstroke" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS grimstroke_win,
      (CASE
          WHEN ("hoodwink" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("hoodwink" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS hoodwink_win,
      (CASE
          WHEN ("void_spirit" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("void_spirit" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS void_spirit_win,
      (CASE
          WHEN ("snapfire" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("snapfire" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS snapfire_win,
      (CASE
          WHEN ("mars" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("mars" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS mars_win,
      (CASE
          WHEN ("dawnbreaker" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("dawnbreaker" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS dawnbreaker_win,
      (CASE
          WHEN ("marci" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("marci" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS marci_win,
      (CASE
          WHEN ("primal_beast" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("primal_beast" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS primal_beast_win,
      (CASE
          WHEN ("muerta" IN UNNEST(radiant_team) AND radiant_win IS TRUE) OR ("muerta" IN UNNEST(dire_team) AND radiant_win IS FALSE) THEN 1
          ELSE 0
      END
        ) AS muerta_win,
    FROM
      `dota.matches` ),
    final AS (
    SELECT
      * EXCEPT(kill_count,
        cte2_match_id,
        picks_bans,
        chat,
        cte3_match_id)
    FROM
      `dota.matches` AS matches
    LEFT JOIN
      cte2
    ON
      matches.match_id = cte2.cte2_match_id
    LEFT JOIN
      cte3
    ON
      matches.match_id = cte3.cte3_match_id )
  SELECT
    *
  FROM
    final )