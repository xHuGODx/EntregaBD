CREATE INDEX idx_VALO_COACH_Team_ID ON VALO_COACH(Team_ID);
-- Index for filtering coaches by their associated team ID

-- VALO_PLAYER table indexes
CREATE INDEX idx_VALO_PLAYER_Team_ID ON VALO_PLAYER(Team_ID);
-- Index for filtering players by their associated team ID

CREATE INDEX idx_VALO_TEAM_Nome ON VALO_TEAM(Nome);
-- Index for quickly searching teams by their name


CREATE INDEX Idx_VALO_PERSON_Name ON VALO_PERSON(Nome);
-- Index for quickly searching players/Coaches by their name

CREATE INDEX IdX_VALO_PLAYERSTATS_AVS ON VALO_PLAYERSTATS(AVS);
-- Index for quickly sorting players by their average score, visible in the Leaderboard