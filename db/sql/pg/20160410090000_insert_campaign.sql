
--------------------------------------------------------------------------------
-- Insert an entry into campaigns for the campaign.
--------------------------------------------------------------------------------

INSERT INTO campaigns(
    id, name, description, created_at, updated_at
) VALUES (
    11, 'Test 11 campaign', 'Test 11 campaign description', now(), now()
);


--------------------------------------------------------------------------------
-- Insert entries into states that correspond to the campaign being inserted.
--------------------------------------------------------------------------------

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11001, 'Test state 11001', NULL, 'say', 11, now(), now()
);

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11002, 'Test state 11002', NULL, 'say', 11, now(), now()
);

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11003, 'Test state 11003', NULL, 'say', 11, now(), now()
);

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11004, 'Test state 11004', NULL, 'say', 11, now(), now()
);

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11005, 'Test state 11005', NULL, 'say', 11, now(), now()
);

INSERT INTO states(
    id, name, description, type, campaign_id, created_at, updated_at
) VALUES (
    11006, 'Test state 11006', NULL, 'say', 11, now(), now()
);


--------------------------------------------------------------------------------
-- Insert audios.
--------------------------------------------------------------------------------

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11001, NULL, 'You are at audio 11001 state', NULL, now(), now()
);

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11002, NULL, 'You are at audio 11002 state', NULL, now(), now()
);

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11003, 'audio11003.wav', 'You are at audio 11003 state', NULL, now(), now()
);

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11004, NULL, 'You are at audio 11004 state', NULL, now(), now()
);

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11005, NULL, 'You are at audio 11005 state', NULL, now(), now()
);

INSERT INTO audios(
    id, src, text, description, created_at, updated_at
) VALUES (
    11006, NULL, 'You are at audio 11006 state', NULL, now(), now()
);


--------------------------------------------------------------------------------
-- Insert individual states.
--------------------------------------------------------------------------------

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11001, 11001, now(), now()
);

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11002, 11002, now(), now()
);

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11003, 11003, now(), now()
);

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11004, 11004, now(), now()
);

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11005, 11005, now(), now()
);

INSERT INTO says(
    state_id, audio_id, created_at, updated_at
) VALUES (
    11006, 11006, now(), now()
);


--------------------------------------------------------------------------------
-- Insert transitions.
--------------------------------------------------------------------------------

INSERT INTO transitions(
    name, description, from_state_id, to_state_id
  , condition, created_at, updated_at
) VALUES (
    NULL, NULL, 11001, 11002
  , TRUE, now(), now()
);

INSERT INTO transitions(
    name, description, from_state_id, to_state_id
  , condition, created_at, updated_at
) VALUES (
    NULL, NULL, 11002, 11003
  , TRUE, now(), now()
);

INSERT INTO transitions(
    name, description, from_state_id, to_state_id
  , condition, created_at, updated_at
) VALUES (
    NULL, NULL, 11003, 11004
  , TRUE, now(), now()
);

INSERT INTO transitions(
    name, description, from_state_id, to_state_id
  , condition, created_at, updated_at
) VALUES (
    NULL, NULL, 11004, 11005
  , TRUE, now(), now()
);

INSERT INTO transitions(
    name, description, from_state_id, to_state_id
  , condition, created_at, updated_at
) VALUES (
    NULL, NULL, 11005, 11006
  , TRUE, now(), now()
);


