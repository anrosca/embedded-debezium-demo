-- Users
insert into users (id, first_name, last_name, user_name, password, enabled) values ('5284f3d2-92d6-438a-8e24-949bd074662a', 'Mike', 'Smith', 'mike', 'shiba', true);

-- User roles
insert into user_roles(id, role_name, user_id) values ('6684f3d2-f2d6-d38a-ae24-c49bd07466ba', 'read', '5284f3d2-92d6-438a-8e24-949bd074662a');
insert into user_roles(id, role_name, user_id) values ('7684f3d2-f2d6-d38a-ae24-c49bd07466bb', 'write', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- Investments
-- ETH
insert into investments (id, name, user_id) values ('1da1f05d-344e-477c-b095-6529f0d756c1', 'Etherium investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- BTC
insert into investments (id, name, user_id) values ('1234f3d2-56f3-518a-5d24-949bd074669a', 'Bitcoin investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- Chainlink
insert into investments (id, name, user_id) values ('5ddff3d2-56f3-518a-5d24-949bd074669b', 'Chainlink investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- Polkadot
insert into investments (id, name, user_id) values ('6ddff3d2-56f3-518a-5d24-949bd07466bb', 'Polkadot investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- Cardano
insert into investments (id, name, user_id) values ('7ddff3d2-56f3-518a-5d24-949bd07466ab', 'Cardano investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

--Solana
insert into investments (id, name, user_id) values ('88dff3d2-56f3-518a-5d24-949bd07466ab', 'Solana investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

--VeChain
insert into investments (id, name, user_id) values ('99dff3d2-56f3-518a-5d24-949bd07466ab', 'VeChain investment', '5284f3d2-92d6-438a-8e24-949bd074662a');

-- Investment records
-- ETH
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('26ef0589-8881-4194-a65e-2b731f80fbc7', 0.01014, '2021-04-29 11:12:13', 29.58, 'ETH', 2802.761341, '1da1f05d-344e-477c-b095-6529f0d756c1');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('33ef0589-4481-5594-a65e-66731f80fb99', 0.009226, '2021-05-04 11:12:13', 27.3, 'ETH', 2804.5356, '1da1f05d-344e-477c-b095-6529f0d756c1');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('11ef0589-1181-1194-a65e-11731f11fb11', 0.00703, '2021-05-13 12:12:13', 24.48, 'ETH', 3345.6614, '1da1f05d-344e-477c-b095-6529f0d756c1');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('21ef0589-1181-1194-a65e-11731f11fb11', 0.01779, '2021-05-14 12:12:13', 76.81, 'ETH', 4118.80, '1da1f05d-344e-477c-b095-6529f0d756c1');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('31ef0589-1181-1194-a65e-11731f11fb11', 0.00887, '2021-06-21 12:12:13', 15.31, 'ETH', 1653.1443, '1da1f05d-344e-477c-b095-6529f0d756c1');

-- BTC
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('5412f3d2-11f3-231a-5d24-34dfd074666d', 0.000512, '2021-04-28 14:15:16', 29.58, 'BTC', 55507.8125, '1234f3d2-56f3-518a-5d24-949bd074669a');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('9999f3d2-11f3-231a-5d24-34dfd074666d', 0.000459, '2021-04-27 14:15:16', 26.52, 'BTC', 55511.98257, '1234f3d2-56f3-518a-5d24-949bd074669a');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('8888f3d2-11f3-231a-5d24-34dfd074555d', 0.000552, '2021-05-13 14:15:16', 24.48, 'BTC', 42608.695, '1234f3d2-56f3-518a-5d24-949bd074669a');

-- Chainlink
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('addff3d2-a6f3-a18a-ad24-a49bd074669a', 0.632, '2021-05-08 14:15:16', 25.03, 'LINK', 39.509494, '5ddff3d2-56f3-518a-5d24-949bd074669b');

-- Polkadot
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('addff3d2-a6f3-a18a-5d24-949bd07466ba', 0.386, '2021-05-09 14:15:16', 12.6, 'DOT', 32.357513, '6ddff3d2-56f3-518a-5d24-949bd07466bb');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('bddff3d4-a6f3-a18a-5d24-949bd074ccba', 0.525, '2021-05-09 15:15:16', 17.02, 'DOT', 32.342857, '6ddff3d2-56f3-518a-5d24-949bd07466bb');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('fddff3d4-a6f3-a18a-5d24-949bd074ccbf', 1.014, '2021-05-06 15:15:16', 36.26, 'DOT', 34.309665, '6ddff3d2-56f3-518a-5d24-949bd07466bb');

-- Cardano
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('dddff3d2-ddf3-518a-5d2d-949bd07466ac', 21.66, '2021-05-02 14:15:16', 30.6, 'ADA', 1.35734072, '7ddff3d2-56f3-518a-5d24-949bd07466ab');
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('addff3d2-ddf3-518a-5d2d-949bd07466ac', 12.32, '2021-05-14 14:15:16', 24.78, 'ADA', 1.5909091, '7ddff3d2-56f3-518a-5d24-949bd07466ab');

-- Solana
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('fddff3df-ddf3-f18a-fd2d-f49bf0f466ac', 0.328, '2021-05-21 14:15:16', 12.63, 'SOL', 36.93, '88dff3d2-56f3-518a-5d24-949bd07466ab');

-- VeChain
insert into investment_records (id, amount_bought, investment_date, spent, symbol, unit_price, investment_id)
values ('eddff3df-eef3-f18a-fe2d-f49bf0f466ac', 105.4, '2021-05-20 14:15:16', 12.63, 'VET', 0.11, '99dff3d2-56f3-518a-5d24-949bd07466ab');
