-- ========================================
-- NAI-KAITUN SCRIPT FOR BLOX FRUITS
-- Auto Kaitun từ Lv1 đến Max Level
-- ========================================

_G.Settings = {
    Team = "Pirates",          -- Pirates hoặc Marine
    AutoFarm = true,
    AutoQuest = true,
    AutoSea = true,
    MasteryFarm = true,
    FastAttack = true,
    AutoCDK = true,
    AutoGodhuman = true,
    AutoRaceV3 = true,
    FPSBoost = true,
}

print("🔥 Nai-Kaitun Script Đang Load...")

-- Load Kaitun Hub chính
loadstring(game:HttpGet('https://raw.githubusercontent.com/ZaqueHub/BloxFruitPC/05507b61c0092197a3b6233ca305f2dfacd20050/KaitunZaque.lua'))()

print("✅ Nai-Kaitun Script Loaded Thành Công!")
print("Chúc bạn farm max level nhanh chóng!")
