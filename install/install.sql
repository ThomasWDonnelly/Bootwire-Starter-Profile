
DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `field_process` (pages_id, data) VALUES('6', '17') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('3', '12') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('8', '12') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('9', '14') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('10', '7') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('11', '47') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('16', '48') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('300', '104') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('21', '50') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('29', '66') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('23', '10') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('304', '138') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('31', '136') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('22', '76') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('30', '68') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('303', '129') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('2', '87') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('302', '121') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('301', '109') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('28', '76') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1008', '148') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1009', '149') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1010', '151') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1011', '153') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1015', '156') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);

DROP TABLE IF EXISTS `field_site_title`;
CREATE TABLE `field_site_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_site_title` (pages_id, data) VALUES('1006', 'The Bootwire Website');

INSERT INTO `field_title` (pages_id, data) VALUES('1', 'Home') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1006', 'Site Settings') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1008', 'ModulesManager') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1009', 'Export Site Profile') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1010', 'Image crop') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1011', 'Delete Page') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1012', 'Repeaters') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1013', 'Clone a page') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1014', 'Clone a tree of pages') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1016', 'Content Management') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);

INSERT INTO `fieldgroups` (id, name) VALUES('1', 'home') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('83', 'basic-page') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('97', 'Site-Settings-Template') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('98', 'blank-template') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);

INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('2', '2', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('2', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '3', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '4', '2', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('4', '5', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('5', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '92', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('1', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('98', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('83', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '97', '1', '{\"description\":\"The title for your site which will be used in the title field and on the top bar\"}') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);

INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,styleselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,spellchecker\",\"theme_advanced_blockformats\":\"p,h1,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix,contextmenu\",\"valid_elements\":\"@[id|class|style],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h1,h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"content_css\":\"\\/site\\/templates\\/css\\/editor.css\",\"custom\":\"paste_text_sticky: true\\r\\npaste_text_sticky_default:true\\r\\ntheme_advanced_styles:Lead=lead;Btn=btn\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/myplugins\\/spellchecker\",\"tags\":\"Common\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('97', 'FieldtypeText', 'site_title', '0', 'Site Title', '{\"size\":0,\"maxlength\":2048,\"tags\":\"Settings\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);

INSERT INTO `modules` (id, class, flags, data) VALUES('148', 'ModulesManager', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('149', 'ProcessExportProfile', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('150', 'FieldtypeCropImage', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('151', 'ProcessCropImage', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('152', 'InputfieldCropImage', '0', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('153', 'ProcessPageDelete', '3', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('154', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1012}') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('155', 'InputfieldRepeater', '0', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('156', 'ProcessPageClone', '3', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);

INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1', '0', '1', 'home', '9', '2013-01-31 13:49:38', '41', '0000-00-00 00:00:00', '2', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('27', '1', '29', 'http404', '1035', '2013-01-31 13:49:57', '41', '2010-06-03 06:53:03', '3', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1006', '1016', '43', 'site-settings', '1025', '2013-01-31 13:54:55', '41', '2012-12-20 18:11:50', '41', '5') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1008', '22', '2', 'modulesmanager', '1', '2012-12-20 22:38:24', '41', '2012-12-20 22:38:24', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1009', '22', '2', 'export-site-profile', '1', '2012-12-20 22:54:40', '41', '2012-12-20 22:54:40', '41', '3') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1010', '3', '2', 'image-crop', '1', '2013-01-27 20:27:04', '41', '2013-01-27 20:27:04', '41', '8') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1011', '3', '2', 'delete', '1', '2013-01-27 20:28:15', '41', '2013-01-27 20:28:15', '41', '9') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1012', '2', '2', 'repeaters', '1036', '2013-01-27 20:28:42', '41', '2013-01-27 20:28:42', '41', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1013', '31', '5', 'page-clone', '1', '2013-01-27 20:29:11', '41', '2013-01-27 20:29:11', '41', '9') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1014', '31', '5', 'page-clone-tree', '1', '2013-01-27 20:29:11', '41', '2013-01-27 20:29:11', '41', '10') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1015', '3', '2', 'clone', '1', '2013-01-27 20:29:11', '41', '2013-01-27 20:29:11', '41', '10') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1016', '1', '44', 'content-management', '1025', '2013-01-31 13:52:14', '41', '2013-01-31 13:51:50', '41', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);

INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('37', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('38', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('32', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('34', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('35', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('36', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('50', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('51', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('52', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('53', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('54', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1006', '1', '2012-12-20 18:11:50') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1013', '2', '2013-01-27 20:29:11') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1014', '2', '2013-01-27 20:29:11') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1016', '1', '2013-01-31 13:51:50') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);

INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('2', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('3', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('3', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('7', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('22', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('22', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('28', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('28', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('1016', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);



INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"roles\":[37]}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('43', 'Site-Settings-Template', '97', '0', '0', '{\"slashUrls\":1,\"tags\":\"No_File\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('44', 'blank-template', '98', '0', '0', '{\"slashUrls\":1,\"tags\":\"No_File\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
