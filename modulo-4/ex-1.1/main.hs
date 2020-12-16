newCharacter name force experience mana = [
 ("name", name),
 ("force", force),
 ("experience", experience),
 ("mana", mana)]

newWarrior name force experience mana weapon = do
 (newCharacter name force experience mana) ++ [("weapon", weapon)]

newMage name force experience mana magic = do
 (newCharacter name force experience mana) ++ [("magic", magic)]

newPriest name force experience mana faith = do
 (newCharacter name force experience mana) ++ [("faith", faith)]

-- REPRESENTAÇÃO EM C

-- typedef struct {
--   char* weapon;
-- } Warrior;
-- 
-- typedef struct {
--   char* magic;
-- } Mage;
-- 
-- typedef struct {
--   char* faith;
-- } Priest;
-- 
-- enum Class { tWarrior, tMage, tPriest };
-- 
-- typedef struct {
--   enum Class characterClass;
--   char* name;
--   int force;
--   int experience;
--   int mana;
-- 
--   union {
--     Warrior warrior;
--     Mage mage;
--     Priest priest;
--   };
-- } Character;