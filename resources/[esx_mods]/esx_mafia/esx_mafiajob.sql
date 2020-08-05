INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_mafia','Mafia',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_mafia','Mafia',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_mafia', 'Mafia', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('mafia', 'Mafia', 1);


INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('mafia', 1, 'capo', 'Junior', 1500, '{}', '{}'),
('mafia', 2, 'assassin', 'Senior', 1800, '{}', '{}'),
('mafia', 3, 'consigliere', 'Vice Boss', 2100, '{}', '{}'),
('mafia', 4, 'boss', 'Boss', 2700, '{}', '{}');