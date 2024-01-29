/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.53 : Database - rootbot
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rootbot` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

/*Table structure for table `jl_admin_menu` */

CREATE TABLE `jl_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `controller` (`controller`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

/*Data for the table `jl_admin_menu` */


INSERT INTO `jl_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', ''),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'),
(3, 2, 1, 1, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', ''),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'),
(5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子'),
(6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'),
(7, 6, 1, 0, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'),
(8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'),
(9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'),
(10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'),
(11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'),
(12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'),
(13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'),
(14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'),
(15, 6, 1, 0, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'),
(16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'),
(17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'),
(18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'),
(19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'),
(20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'),
(21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'),
(22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'),
(23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'),
(24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'),
(25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'),
(26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'),
(27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'),
(28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'),
(29, 6, 1, 0, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'),
(30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'),
(31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'),
(32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'),
(33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'),
(34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'),
(35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'),
(36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'),
(37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'),
(38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'),
(39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'),
(40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'),
(41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'),
(42, 6, 1, 0, 10000, 'admin', 'Plugin', 'index', '', '短信其它', '', ''),
(43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'),
(44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'),
(45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'),
(46, 42, 2, 1, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', ''),
(47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'),
(49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组'),
(50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'),
(54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'),
(55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'),
(56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'),
(57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'),
(58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', ''),
(59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'),
(60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'),
(61, 6, 1, 0, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', ''),
(62, 61, 1, 1, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', ''),
(63, 61, 2, 1, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', ''),
(64, 61, 1, 1, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', ''),
(65, 61, 2, 1, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', ''),
(66, 61, 2, 1, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', ''),
(67, 61, 2, 1, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', ''),
(68, 61, 2, 1, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', ''),
(69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'),
(70, 61, 1, 1, 10000, 'admin', 'Route', 'select', '', '选择URL', '', ''),
(71, 6, 1, 0, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'),
(72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'),
(73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'),
(74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'),
(75, 6, 1, 0, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'),
(76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'),
(77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'),
(78, 6, 1, 0, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'),
(79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'),
(80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'),
(81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'),
(82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'),
(83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'),
(84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'),
(85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'),
(86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'),
(87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'),
(88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'),
(89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'),
(90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'),
(91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'),
(92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'),
(93, 6, 1, 0, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'),
(94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'),
(95, 6, 1, 0, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'),
(97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'),
(98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'),
(99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'),
(101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'),
(102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'),
(103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'),
(104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'),
(105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'),
(106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'),
(107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'),
(108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'),
(109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计'),
(110, 0, 0, 0, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'user', ''),
(111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理'),
(112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'),
(113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'),
(114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'),
(115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'),
(116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'),
(117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'),
(118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'),
(119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'),
(120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'),
(121, 0, 0, 0, 30, 'portal', 'AdminIndex', 'default', '', '文章资讯', 'pencil-square-o', ''),
(122, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'),
(123, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'),
(124, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'),
(125, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'),
(126, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'),
(127, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'),
(128, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'),
(129, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'),
(130, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'),
(131, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'),
(132, 121, 1, 0, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'),
(133, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'),
(134, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'),
(135, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'),
(136, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'),
(137, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'),
(138, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'),
(139, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'),
(140, 121, 1, 0, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'),
(141, 140, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'),
(142, 140, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'),
(143, 140, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'),
(144, 140, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'),
(145, 140, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'),
(146, 121, 1, 0, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'),
(147, 146, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'),
(148, 146, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'),
(149, 146, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'),
(150, 146, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'),
(151, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'),
(152, 151, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'),
(153, 110, 0, 0, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', ''),
(154, 153, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'),
(155, 154, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'),
(156, 154, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'),
(157, 153, 1, 0, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'),
(158, 157, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'),
(159, 6, 1, 0, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理'),
(160, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作'),
(161, 159, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交'),
(162, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作'),
(164, 6, 1, 1, 10000, 'admin', 'Appconfig', 'index', '', '系统配置', '', ''),
(165, 164, 2, 0, 10000, 'admin', 'Appconfig', 'indexPost', '', '提交', '', ''),
(170, 0, 1, 1, 10000, 'admin', 'coin', 'index', '', '钱包管理', 'btc', ''),
(171, 170, 1, 1, 10002, 'admin', 'Wallet', 'usdt', '', 'USDT钱包', '', ''),
(183, 185, 1, 1, 10000, 'admin', 'Cron', 'balance', '', '余额更新日志', '', ''),
(185, 0, 1, 1, 10002, 'admin', 'rizhi', 'index', '', '系统日志', '', ''),
(186, 170, 1, 0, 10001, 'admin', 'Wallet', 'eth', '', 'ETH钱包', '', ''),
(189, 185, 0, 0, 10000, 'admin', 'UserBalancelog', 'index', '', '用户余额变更日志', '', ''),
(190, 185, 0, 0, 10000, 'admin', 'ActionLog', 'index', '', '访问记录表', '', ''),
(192, 170, 1, 0, 10000, 'admin', 'Wallet', 'btc', '', 'BTC钱包', '', ''),
(193, 185, 1, 1, 10001, 'admin', 'Cron', 'notify', '', '回调通知日志', '', ''),
(194, 0, 1, 1, 10001, 'admin', 'TransferLog', 'index', '', '账户交易', 'list', ''),
(195, 194, 1, 1, 10000, 'admin', 'TransferLog', 'payment', '', '充值记录', '', ''),
(196, 194, 1, 1, 10001, 'admin', 'TransferLog', 'turnout_in', '', '内部转出', '', ''),
(197, 194, 1, 1, 10002, 'admin', 'TransferLog', 'turnout_out', '', '外部转出', '', ''),
(198, 194, 1, 1, 10003, 'admin', 'TransferLog', 'huizong', '', '系统汇总', '', ''),
(199, 6, 1, 1, 10000, 'admin', 'Coins', 'index', '', '币种设置', '', ''),
(200, 185, 1, 1, 10001, 'admin', 'Cron', 'collect', '', '自动汇总日志', '', ''),
(201, 194, 1, 1, 10005, 'admin', 'ChainLog', 'index', '', '链上转出', '', ''),
(202, 170, 1, 1, 10005, 'admin', 'Wallet', 'token', '', 'ETH Token钱包', '', ''),
(203, 194, 1, 1, 10004, 'admin', 'TransferLog', 'fee', '', '汇总手续费', '', ''),
(204, 170, 1, 0, 10006, 'admin', 'Wallet', 'etc', '', 'ETC钱包', '', ''),
(205, 170, 1, 0, 10007, 'admin', 'Wallet', 'ltc', '', 'LTC钱包', '', ''),
(206, 170, 1, 0, 10008, 'admin', 'Wallet', 'bch', '', 'BCH钱包', '', ''),
(207, 170, 1, 0, 10009, 'admin', 'Wallet', 'eos', '', 'EOS钱包', '', ''),
(208, 170, 1, 0, 10010, 'admin', 'Wallet', 'xrp', '', 'XRP钱包', '', ''),
(209, 170, 1, 1, 10000, 'admin', 'Wallet', 'trx', '', 'TRX余额', '', '');

/*Table structure for table `jl_asset` */

CREATE TABLE `jl_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

/*Data for the table `jl_asset` */

insert  into `jl_asset`(`id`,`user_id`,`file_size`,`create_time`,`status`,`download_times`,`file_key`,`filename`,`file_path`,`file_md5`,`file_sha1`,`suffix`,`more`) values (22,1,650,1577277562,1,0,'bfb523cd631d9502ad7b3bdc46d1150420008c807aa51f1afd4f6be27bda45e8','ppp.ph','default/20191225/5ad4256df480541c9d71faf43c678753.ph','bfb523cd631d9502ad7b3bdc46d11504','f93142cb1f8631f9dc19933cabc779f839cabd15','ph',NULL),(23,1,618,1577278065,1,0,'ca0928eb05341fbfcdfb0e6cb3461c2f243a95b3e8e84486abdee96a2fc362b5','ppp.php ','default/20191225/f6a4962c5173bfab59cf122e06f70677.php ','ca0928eb05341fbfcdfb0e6cb3461c2f','80f1ccdcafbb32a7651ff354e729797abc740f8c','php ',NULL),(24,1,77199,1577279869,1,0,'6c84142c14a34ce5df2b194fb6043615d57abf1913dc8c112fbfd2329473af1a','nice.php ','/..//20191225/d7316987c427aff3e75de8efeaaaaa35.php ','6c84142c14a34ce5df2b194fb6043615','b30ed0196d0ec05c0141f0ac9d71f8969cf393d9','php ',NULL),(25,1,77202,1577280386,1,0,'618caa87a4cdec76301dc8d839e827e0c03bae0013b14748e07148528fac2d6e','nice.php ','/..//20191225/1e766b66fa95c333dd0796df740533ee.php ','618caa87a4cdec76301dc8d839e827e0','d05af15d9e9f41acf384d1181bf795e5ae431235','php ',NULL),(26,1,17,1577280463,1,0,'f1d3661c581633d5425334868242e8ff2fdc359cfc7a12a486a8dcc055875283','1.php ','/..//20191225/58c4230a63ffa344c8b88807d03d722f.php ','f1d3661c581633d5425334868242e8ff','e64a4f8b279d64886992d68a0ec2302b9ba6df58','php ',NULL),(27,1,18,1577281413,1,0,'e999da5dfb465dfb62b00cfd5ae5a87ecf51e8254465bad73bf1a8636ce762af','1.php5','/..//20191225/c02bda5a82fa41ca5b5c673f921c9557.php5','e999da5dfb465dfb62b00cfd5ae5a87e','266d904ed686564b90f8e0f389fbe98c29e683c3','php5',NULL),(28,1,15,1577281603,1,0,'faa3aa2bbe07c5ee385e1adffc545cf068de07d03136b86d6042ea0c03863fe2','1.php5','/..//20191225/c6560bf37a7e5b0c0766052995a34ab1.php5','faa3aa2bbe07c5ee385e1adffc545cf0','3476ae8c7d9b17ed023a4db2d47bcea774f704ce','php5',NULL),(29,1,13,1577281697,1,0,'7a8957b3ab2965efa3ef50b96206674e7300f2ce383c8b652875ccf9948db145','1.php5','/..//20191225/fc2b5e84862adc9a1ca1ed9d9f018b29.php5','7a8957b3ab2965efa3ef50b96206674e','2c0884f34f1cf175e0342e7d7279f75a770890b1','php5',NULL),(30,1,18,1577281847,1,0,'d9849058ad14c9d2bd1a78165ff04f0963143dd3e9744d38faec5ea1d6154eb7','1.php5','/..//20191225/ad48ebe2eea3671845ab4ee9bccb4967.php5','d9849058ad14c9d2bd1a78165ff04f09','9b8a661c0e539f3ec061ee9c58ee8ec7656295ea','php5',NULL),(31,1,19,1577281892,1,0,'1dbd3b8b8324a241df8c5c091265cafdeb85a9b58f74caad7f3baae93f58b628','1.php5','/..//20191225/4cdc36e3f768c8718e63222f032952b2.php5','1dbd3b8b8324a241df8c5c091265cafd','c8a451c1987ffaad583504c08d0f1dfc8976bec7','php5',NULL),(32,1,19,1577281952,1,0,'1bfe466736723f7ecb2ce8d86c55b350f949e551f2a5268838d98b92b18b7cc1','1.php ','/..//20191225/acd64c423f31f81f4b03a12891af603b.php ','1bfe466736723f7ecb2ce8d86c55b350','6e8e43b7e110a8b432ea50bb0c9ebd0ca6ee54d2','php ',NULL),(33,1,23,1577282068,1,0,'d3c75eeab1dac2a9a0b02270ba05e6595a3c00e5ad22468b3f32068ed91ec7c5','1.php ','/..//20191225/391b6fad79c48f32e686f823b4b9ee8e.php ','d3c75eeab1dac2a9a0b02270ba05e659','f819b32afbb5172ff769fe32582004ebb2bff56d','php ',NULL),(34,1,25,1577282149,1,0,'22ef0c0d8908a2fe6286a016a3ad66f8a1a1c30df64ce49fdfaeb9c74c3c7cfe','1.php?','/..//20191225/4967066f1e76a123f1f8889a5a61db56.php?','22ef0c0d8908a2fe6286a016a3ad66f8','82e29e9d3e3b419984368ad774df3ab02372f3fd','php?',NULL),(35,1,22,1577366520,1,0,'42692c48d463e8e7fb3bc84ff263426b6d1d0d60c4c949507725cafe00dea6fd','1.php?','/..//20191226/7b3b1387cdaf210fd315f76f4fbb3296.php?','42692c48d463e8e7fb3bc84ff263426b','72d1b5b1c87b2d7cb27301e7cdf093a4b3d0f197','php?',NULL),(36,1,24,1577368418,1,0,'055669e3f2c126a25dc32e2d423f50551a9e9fce8112c3ace2d552d1baa2c767','k.phtml','/..//20191226/7a3c87fd0b173824d176369b7156f753.phtml','055669e3f2c126a25dc32e2d423f5055','ac1a501a65c726e4c6fa9485b7fde8a3c9ad00e2','phtml',NULL),(37,1,25,1577368514,1,0,'73e23da5d54cd167d7a22b8dbd6b1938b853f7c7f863c316e51a44d1813e32a6','k.php1','/..//20191226/cbf0a74180df508a55b7a50d643cf2af.php1','73e23da5d54cd167d7a22b8dbd6b1938','bb82b8d2633b4a771a260e97f60d3e558ed2a45f','php1',NULL),(38,1,26,1577368544,1,0,'b21900738b7e10929c314c595652f82257bb6e4f00f9485f77515ad9d986c848','k.php2','/..//20191226/0748fbe27ac3e4af36ec79f759009acd.php2','b21900738b7e10929c314c595652f822','e878bf85a6412f5c1ae94d787afd8b458c164d84','php2',NULL),(39,1,27,1577368598,1,0,'9dbae431309c6253703c737ec68b94355e4641a766b0b9df50a61f14b7a8bf1b','k.php3','/..//20191226/a42b0d928569558a0c9ae8dce2e5d24b.php3','9dbae431309c6253703c737ec68b9435','1442860f28b2ea5c1146d5cf053e0090459be685','php3',NULL);

/*Table structure for table `jl_auth_access` */

CREATE TABLE `jl_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COMMENT='权限授权表';

/*Data for the table `jl_auth_access` */

insert  into `jl_auth_access`(`id`,`role_id`,`rule_name`,`type`) values (1,2,'admin/setting/default','admin_url'),(2,2,'admin/setting/site','admin_url'),(3,2,'admin/setting/sitepost','admin_url'),(4,2,'admin/mailer/index','admin_url'),(5,2,'admin/mailer/indexpost','admin_url'),(6,2,'admin/mailer/template','admin_url'),(7,2,'admin/mailer/templatepost','admin_url'),(8,2,'admin/mailer/test','admin_url'),(9,2,'admin/theme/index','admin_url'),(10,2,'admin/theme/install','admin_url'),(11,2,'admin/theme/uninstall','admin_url'),(12,2,'admin/theme/installtheme','admin_url'),(13,2,'admin/theme/update','admin_url'),(14,2,'admin/theme/active','admin_url'),(15,2,'admin/theme/files','admin_url'),(16,2,'admin/theme/filesetting','admin_url'),(17,2,'admin/theme/filearraydata','admin_url'),(18,2,'admin/theme/filearraydataedit','admin_url'),(19,2,'admin/theme/filearraydataeditpost','admin_url'),(20,2,'admin/theme/filearraydatadelete','admin_url'),(21,2,'admin/theme/settingpost','admin_url'),(22,2,'admin/theme/datasource','admin_url'),(23,2,'admin/theme/design','admin_url'),(24,2,'admin/nav/index','admin_url'),(25,2,'admin/nav/add','admin_url'),(26,2,'admin/nav/addpost','admin_url'),(27,2,'admin/nav/edit','admin_url'),(28,2,'admin/nav/editpost','admin_url'),(29,2,'admin/nav/delete','admin_url'),(30,2,'admin/navmenu/index','admin_url'),(31,2,'admin/navmenu/add','admin_url'),(32,2,'admin/navmenu/addpost','admin_url'),(33,2,'admin/navmenu/edit','admin_url'),(34,2,'admin/navmenu/editpost','admin_url'),(35,2,'admin/navmenu/delete','admin_url'),(36,2,'admin/navmenu/listorder','admin_url'),(37,2,'admin/slide/index','admin_url'),(38,2,'admin/slide/add','admin_url'),(39,2,'admin/slide/addpost','admin_url'),(40,2,'admin/slide/edit','admin_url'),(41,2,'admin/slide/editpost','admin_url'),(42,2,'admin/slide/delete','admin_url'),(43,2,'admin/slideitem/index','admin_url'),(44,2,'admin/slideitem/add','admin_url'),(45,2,'admin/slideitem/addpost','admin_url'),(46,2,'admin/slideitem/edit','admin_url'),(47,2,'admin/slideitem/editpost','admin_url'),(48,2,'admin/slideitem/delete','admin_url'),(49,2,'admin/slideitem/ban','admin_url'),(50,2,'admin/slideitem/cancelban','admin_url'),(51,2,'admin/slideitem/listorder','admin_url'),(52,2,'admin/link/index','admin_url'),(53,2,'admin/link/add','admin_url'),(54,2,'admin/link/addpost','admin_url'),(55,2,'admin/link/edit','admin_url'),(56,2,'admin/link/editpost','admin_url'),(57,2,'admin/link/delete','admin_url'),(58,2,'admin/link/listorder','admin_url'),(59,2,'admin/link/toggle','admin_url'),(60,2,'admin/menu/index','admin_url'),(61,2,'admin/menu/lists','admin_url'),(62,2,'admin/menu/add','admin_url'),(63,2,'admin/menu/addpost','admin_url'),(64,2,'admin/menu/edit','admin_url'),(65,2,'admin/menu/editpost','admin_url'),(66,2,'admin/menu/delete','admin_url'),(67,2,'admin/menu/listorder','admin_url'),(68,2,'admin/menu/getactions','admin_url'),(69,2,'admin/plugin/index','admin_url'),(70,2,'admin/plugin/toggle','admin_url'),(71,2,'admin/plugin/setting','admin_url'),(72,2,'admin/plugin/settingpost','admin_url'),(73,2,'admin/plugin/install','admin_url'),(74,2,'admin/plugin/update','admin_url'),(75,2,'admin/plugin/uninstall','admin_url'),(76,2,'admin/route/index','admin_url'),(77,2,'admin/route/add','admin_url'),(78,2,'admin/route/addpost','admin_url'),(79,2,'admin/route/edit','admin_url'),(80,2,'admin/route/editpost','admin_url'),(81,2,'admin/route/delete','admin_url'),(82,2,'admin/route/ban','admin_url'),(83,2,'admin/route/open','admin_url'),(84,2,'admin/route/listorder','admin_url'),(85,2,'admin/route/select','admin_url'),(86,2,'admin/setting/password','admin_url'),(87,2,'admin/setting/passwordpost','admin_url'),(88,2,'admin/setting/upload','admin_url'),(89,2,'admin/setting/uploadpost','admin_url'),(90,2,'admin/setting/clearcache','admin_url'),(91,2,'admin/storage/index','admin_url'),(92,2,'admin/storage/settingpost','admin_url'),(93,2,'user/adminuseraction/index','admin_url'),(94,2,'user/adminuseraction/edit','admin_url'),(95,2,'user/adminuseraction/editpost','admin_url'),(96,2,'user/adminuseraction/sync','admin_url'),(97,2,'admin/appconfig/index','admin_url'),(98,2,'admin/appconfig/indexpost','admin_url'),(99,2,'admin/coins/index','admin_url'),(100,2,'user/adminindex/default','admin_url'),(101,2,'admin/user/default','admin_url'),(102,2,'admin/rbac/index','admin_url'),(103,2,'admin/rbac/roleadd','admin_url'),(104,2,'admin/rbac/roleaddpost','admin_url'),(105,2,'admin/rbac/roleedit','admin_url'),(106,2,'admin/rbac/roleeditpost','admin_url'),(107,2,'admin/rbac/roledelete','admin_url'),(108,2,'admin/rbac/authorize','admin_url'),(109,2,'admin/rbac/authorizepost','admin_url'),(110,2,'admin/user/index','admin_url'),(111,2,'admin/user/add','admin_url'),(112,2,'admin/user/addpost','admin_url'),(113,2,'admin/user/edit','admin_url'),(114,2,'admin/user/editpost','admin_url'),(115,2,'admin/user/userinfo','admin_url'),(116,2,'admin/user/userinfopost','admin_url'),(117,2,'admin/user/delete','admin_url'),(118,2,'admin/user/ban','admin_url'),(119,2,'admin/user/cancelban','admin_url'),(120,2,'user/adminindex/default1','admin_url'),(121,2,'user/adminindex/index','admin_url'),(122,2,'user/adminindex/ban','admin_url'),(123,2,'user/adminindex/cancelban','admin_url'),(124,2,'user/adminoauth/index','admin_url'),(125,2,'user/adminoauth/delete','admin_url'),(126,2,'admin/plugin/default','admin_url'),(127,2,'admin/hook/index','admin_url'),(128,2,'admin/hook/plugins','admin_url'),(129,2,'admin/hook/pluginlistorder','admin_url'),(130,2,'admin/hook/sync','admin_url'),(131,2,'portal/adminindex/default','admin_url'),(132,2,'portal/adminarticle/index','admin_url'),(133,2,'portal/adminarticle/add','admin_url'),(134,2,'portal/adminarticle/addpost','admin_url'),(135,2,'portal/adminarticle/edit','admin_url'),(136,2,'portal/adminarticle/editpost','admin_url'),(137,2,'portal/adminarticle/delete','admin_url'),(138,2,'portal/adminarticle/publish','admin_url'),(139,2,'portal/adminarticle/top','admin_url'),(140,2,'portal/adminarticle/recommend','admin_url'),(141,2,'portal/adminarticle/listorder','admin_url'),(142,2,'portal/admincategory/index','admin_url'),(143,2,'portal/admincategory/add','admin_url'),(144,2,'portal/admincategory/addpost','admin_url'),(145,2,'portal/admincategory/edit','admin_url'),(146,2,'portal/admincategory/editpost','admin_url'),(147,2,'portal/admincategory/select','admin_url'),(148,2,'portal/admincategory/listorder','admin_url'),(149,2,'portal/admincategory/delete','admin_url'),(150,2,'portal/adminpage/index','admin_url'),(151,2,'portal/adminpage/add','admin_url'),(152,2,'portal/adminpage/addpost','admin_url'),(153,2,'portal/adminpage/edit','admin_url'),(154,2,'portal/adminpage/editpost','admin_url'),(155,2,'portal/adminpage/delete','admin_url'),(156,2,'portal/admintag/index','admin_url'),(157,2,'portal/admintag/add','admin_url'),(158,2,'portal/admintag/addpost','admin_url'),(159,2,'portal/admintag/upstatus','admin_url'),(160,2,'portal/admintag/delete','admin_url'),(161,2,'admin/recyclebin/index','admin_url'),(162,2,'admin/recyclebin/restore','admin_url'),(163,2,'admin/recyclebin/delete','admin_url'),(164,2,'user/adminasset/index','admin_url'),(165,2,'user/adminasset/delete','admin_url'),(166,2,'admin/coin/index','admin_url'),(167,2,'admin/wallet/btc','admin_url'),(168,2,'admin/wallet/eth','admin_url'),(169,2,'admin/wallet/usdt','admin_url'),(170,2,'admin/wallet/token','admin_url'),(171,2,'admin/wallet/etc','admin_url'),(172,2,'admin/wallet/ltc','admin_url'),(173,2,'admin/wallet/bch','admin_url'),(174,2,'admin/wallet/eos','admin_url'),(175,2,'admin/wallet/xrp','admin_url'),(176,2,'admin/transferlog/index','admin_url'),(177,2,'admin/transferlog/payment','admin_url'),(178,2,'admin/transferlog/turnout_in','admin_url'),(179,2,'admin/transferlog/turnout_out','admin_url'),(180,2,'admin/transferlog/huizong','admin_url'),(181,2,'admin/transferlog/fee','admin_url'),(182,2,'admin/chainlog/index','admin_url'),(183,2,'admin/rizhi/index','admin_url'),(184,2,'admin/cron/balance','admin_url'),(185,2,'admin/userbalancelog/index','admin_url'),(186,2,'admin/actionlog/index','admin_url'),(187,2,'admin/cron/notify','admin_url'),(188,2,'admin/cron/collect','admin_url');

/*Table structure for table `jl_auth_grade` */

CREATE TABLE `jl_auth_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL COMMENT '认证等级',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `content` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(2) DEFAULT NULL COMMENT '状态(1:正常，0：弃用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='认证等级表';

/*Data for the table `jl_auth_grade` */

insert  into `jl_auth_grade`(`id`,`type`,`name`,`content`,`status`) values (1,1,'安全等级1','24小时发币限额: 0 BTC。<br>24小时闪兑限额: 0 BTC。',1),(2,2,'安全等级2','24小时发币限额: 10 BTC。<br>24小时闪兑限额: 0 BTC。<br>需要完成:设置支付密码。',1),(3,3,'安全等级3','24小时发币限额: 50 BTC。<br>24小时闪兑限额: 5 BTC。<br>需要完成: 安全等级2认证，并且提供政府颁发的带照片的有效证件。\r\n',1),(4,4,'安全等级4','24小时发币限额: 200 BTC。<br>24小时闪兑限额: 10 BTC。<br>需要完成: 需要完成: KYC 等级3认证和视频认证。',1),(5,5,'安全等级5','24小时发币限额: 500 BTC。<br>24小时闪兑限额: 50 BTC。<br>需要完成: KYC等级4认证，并且联系客户支持，我们会评估您的需求为您提升所需额度。',1);

/*Table structure for table `jl_auth_rule` */

CREATE TABLE `jl_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

/*Data for the table `jl_auth_rule` */

insert  into `jl_auth_rule`(`id`,`status`,`app`,`type`,`name`,`param`,`title`,`condition`) values (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件中心',''),(41,1,'admin','admin_url','admin/Plugin/index','','短信其它',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/Theme/design','','模板设计',''),(109,1,'admin','admin_url','admin/User/default','','管理组',''),(110,1,'admin','admin_url','admin/User/index','','管理员',''),(111,1,'admin','admin_url','admin/User/add','','管理员添加',''),(112,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(113,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(114,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(115,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(116,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(117,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(118,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(119,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(120,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(121,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(122,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(123,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(124,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(125,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(126,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(127,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(128,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(129,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(130,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(131,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(132,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(133,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(134,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(135,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(136,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(137,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(138,1,'portal','admin_url','portal/AdminIndex/default','','文章资讯',''),(139,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(140,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(141,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(142,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(143,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(144,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(145,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(146,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(147,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(148,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(149,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(150,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(151,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(152,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(153,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(154,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(155,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(156,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(157,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(158,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(159,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(160,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(161,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(162,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(163,1,'Admin','admin_url','Admin/user_test/index','','用户测试11',''),(164,1,'admin','admin_url','admin/Appconfig/index','','运营配置',''),(165,1,'admin','admin_url','admin/Appconfig/indexPost','','提交',''),(166,1,'Admin','admin_url','Admin/index/index','','发现管理',''),(167,1,'Admin','admin_url','Admin/Discovery/index','','发现列表',''),(168,1,'Admin','admin_url','Admin/DiscoveryCategory/index','','发现分类列表',''),(169,1,'user','admin_url','user/User_auth/index','','实名认证审核',''),(170,1,'admin','admin_url','admin/Coin/index','','钱包管理',''),(171,1,'admin','admin_url','admin/Coins/index','','币种管理',''),(172,1,'admin','admin_url','admin/operation/default','','运营管理',''),(173,1,'admin','admin_url','admin/push/index','','系统推送',''),(174,1,'admin','admin_url','admin/wealth/default','','财富管理',''),(175,1,'admin','admin_url','admin/wealth/index','','理财套餐',''),(176,1,'admin','admin_url','admin/Exchange/index','','闪兑管理',''),(177,1,'admin','admin_url','admin/indexredenv/index','','红包管理',''),(178,1,'admin','admin_url','admin/RedNickname/index','','随机姓名管理',''),(179,1,'admin','admin_url','admin/RedWish/index','','随机祝福语管理',''),(180,1,'admin','admin_url','admin/redenv/index','','红包列表',''),(181,1,'admin','admin_url','admin/Ticker/index','','行情市场',''),(182,1,'admin','admin_url','admin/AuthVideoLog/index','','视频认证日志',''),(183,1,'admin','admin_url','admin/Cron/index','','任务日志',''),(184,1,'admin','admin_url','admin/ExchangeLog/index','','闪兑记录',''),(185,1,'admin','admin_url','admin/rizhi/index','','系统日志',''),(186,1,'admin','admin_url','admin/TransferLog/index','','转账记录',''),(187,1,'admin','admin_url','admin/WeallthLog/index','','理财变更记录',''),(188,1,'admin','admin_url','admin/UserSeoreLog/index','','用户积分奖励',''),(189,1,'admin','admin_url','admin/UserBalancelog/index','','用户余额变更日志',''),(190,1,'admin','admin_url','admin/ActionLog/index','','访问记录表',''),(191,1,'admin','admin_url','admin/WealthOrder/index','','理财订单',''),(192,1,'admin','admin_url','admin/Wallet/index','','钱包管理',''),(193,1,'admin','admin_url','admin/Rate/index','','汇率管理',''),(194,1,'admin','admin_url','admin/Wallet/trx','','TRX余额','');

/*Table structure for table `jl_chain_log` */

CREATE TABLE `jl_chain_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tx_id` varchar(255) NOT NULL COMMENT '链上交易ID',
  `coin_symbol` varchar(255) NOT NULL COMMENT '币种信息',
  `from_address` varchar(255) NOT NULL DEFAULT '' COMMENT '发起地址',
  `to_address` varchar(255) NOT NULL DEFAULT '' COMMENT '接受地址',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `amount` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `fee` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '手续费',
  `block_hash` varchar(255) NOT NULL DEFAULT '' COMMENT '区块hash',
  `log_time` int(10) NOT NULL COMMENT '时间',
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '交易状态',
  PRIMARY KEY (`id`),
  KEY `tx_id` (`tx_id`) USING BTREE,
  KEY `coin_symbol` (`coin_symbol`) USING BTREE,
  KEY `from_address` (`from_address`) USING BTREE,
  KEY `block_hash` (`block_hash`) USING BTREE,
  KEY `log_time` (`log_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `jl_chain_log` */

/*Table structure for table `jl_coin` */

CREATE TABLE `jl_coin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_name` varchar(255) NOT NULL COMMENT '币种名称',
  `coin_symbol` varchar(255) NOT NULL COMMENT '币种符号',
  `coin_type` varchar(255) NOT NULL DEFAULT 'coin' COMMENT 'coin/token',
  `parent_coin` varchar(255) NOT NULL DEFAULT '' COMMENT '代币父币种',
  `contract` varchar(255) NOT NULL DEFAULT '' COMMENT '合约地址',
  `decimals` int(10) NOT NULL DEFAULT '18' COMMENT '小数位数',
  `rpc_ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'Rpc 服务器IP',
  `rpc_port` varchar(255) NOT NULL DEFAULT '' COMMENT 'rpc端口',
  `rpc_user` varchar(255) NOT NULL DEFAULT '' COMMENT 'Rpc 用户名',
  `rpc_pass` varchar(255) NOT NULL DEFAULT '' COMMENT 'Rpc 密码',
  `rpc_last_pos` varchar(255) NOT NULL DEFAULT '' COMMENT 'RPC上一次请求位置',
  `min_fee` decimal(30,8) NOT NULL DEFAULT '0.00000000' COMMENT '最小手续费',
  `max_fee` decimal(30,8) NOT NULL DEFAULT '0.00000000' COMMENT '最大手续费',
  `recharge_min` decimal(30,8) NOT NULL DEFAULT '0.00000000' COMMENT '充值最小金额,低于此金额将被忽略',
  `collect_min` decimal(30,8) NOT NULL DEFAULT '0.00000000' COMMENT '最小归集金额',
  `collect_max` decimal(30,8) NOT NULL DEFAULT '0.00000000' COMMENT '最大归集金额',
  `collect_status` int(11) NOT NULL DEFAULT '0' COMMENT '自动归集开关',
  `sort` int(11) DEFAULT '0',
  `img_url` varchar(255) DEFAULT '',
  `usd_price` decimal(10,2) DEFAULT '0.00',
  `cloud_status` tinyint(1) DEFAULT '0',
  `hd_status` tinyint(1) DEFAULT '0',
  `cloud_default` tinyint(1) DEFAULT '0',
  `hd_default` tinyint(1) DEFAULT '0',
  `tips` varchar(255) DEFAULT '',
  `coin_decimal` decimal(10,2) DEFAULT '0.00',
  `host` varchar(255) DEFAULT '',
  `pwd` varchar(255) DEFAULT '',
  `memo_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `coin_symbol` (`coin_symbol`(191)) USING BTREE,
  KEY `coin_type` (`coin_type`(191)) USING BTREE,
  KEY `parent_coin` (`parent_coin`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jl_coin` */

insert  into `jl_coin`(`id`,`coin_name`,`coin_symbol`,`coin_type`,`parent_coin`,`contract`,`decimals`,`rpc_ip`,`rpc_port`,`rpc_user`,`rpc_pass`,`rpc_last_pos`,`min_fee`,`max_fee`,`recharge_min`,`collect_min`,`collect_max`,`collect_status`,`sort`,`img_url`,`usd_price`,`cloud_status`,`hd_status`,`cloud_default`,`hd_default`,`tips`,`coin_decimal`,`host`,`pwd`,`memo_name`) values (1,'比特币/Bitcoin','BTC','coin','','',18,'','18333','','','','0.00030000','0.00009000','0.00100000','0.00200000','10.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(2,'以太坊/Ethereum','ETH','coin','','',18,'47.91.154.255','8545','','','','0.00030000','0.00009000','0.00100000','0.00100000','10.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(3,'泰达币/Tether','USDT2','token','ETH','0xdac17f958d2ee523a2206206994597c13d831ec7',6,'','','','','','0.00030000','0.00009000','0.00100000','0.00000000','10.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(4,'以太零/ETZ','ETZ','coin','','',18,'128.199.140.181','9645','','','','0.00030000','0.00000000','0.00100000','10.00000000','100000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(27,'币安币','BNB','token','ETH','0xB8c77482e45F1F44dE1745F52C74426C631bDD52',18,'','','','','','0.00040000','0.00000000','0.00000000','0.00100000','10000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(31,'莱特币/Litecoin','LTC','coin','','',18,'47.75.102.188','8334','','','','0.00030000','0.00000000','0.00100000','0.00000000','10.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(32,'比特币现金/BCH','BCH','coin','','',18,'47.89.18.98','8334','','','','0.00030000','0.00000000','0.00000000','0.00000000','10000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(33,'以太经典/ETC','ETC','coin','','',18,'47.75.61.210','8545','','','','0.00030000','0.00000000','0.00000000','0.00000000','10000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(34,'瑞波币/Ripple','XRP','coin','','',18,'47.75.137.231','51235','','','1614756577','0.00000000','0.00000000','0.00000000','0.00000000','10000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(35,'柚子/EOS','EOS','coin','','',18,'47.52.230.35','9876','','','','0.00030000','0.00000000','0.00000000','0.00000000','10000.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(39,'KTO','KTO','coin','','',18,'','','','','26165377','0.00000000','0.00000000','0.00000000','0.00000000','0.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(40,'JPT','JPT','token','KTO','',8,'','','','','','0.00000000','0.00000000','0.00000000','0.00000000','0.00000000',0,0,'','0.00',0,0,0,0,'','0.00','','',''),(41,'TRX','TRX','coin','','',6,'127.0.0.1','8080','','','','0.00000000','0.00000000','0.00000000','0.00000000','0.00000000',1,0,'','0.00',0,0,0,0,'','0.00','','',''),(42,'USDT','USDT','token','TRX','TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t',6,'','','','','','0.10000000','0.00000000','0.00000000','0.00000000','0.00000000',1,0,'','0.00',0,0,0,0,'','0.00','','','');

/*Table structure for table `jl_cron` */

CREATE TABLE `jl_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'generate_user_walljl_address',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '执行参数',
  `wallet_id` int(11) NOT NULL DEFAULT '0' COMMENT '钱包ID',
  `result` varchar(1000) NOT NULL DEFAULT '' COMMENT '执行结果',
  `schedule_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划开启时间',
  `fail_times` int(11) NOT NULL DEFAULT '0' COMMENT '执行失败次数',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0 未处理 1处理成功  -1 处理失败',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE,
  KEY `schedule_time` (`schedule_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109431 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jl_cron` */

/*Table structure for table `jl_hook` */

CREATE TABLE `jl_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

/*Data for the table `jl_hook` */

insert  into `jl_hook`(`id`,`type`,`once`,`name`,`hook`,`app`,`description`) values (1,1,0,'应用初始化','app_init','cmf','应用初始化'),(2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(30,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(31,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后'),(32,2,1,'获取上传界面','fetch_upload_view','user','获取上传界面'),(33,3,0,'主要内容之前','before_content','cmf','主要内容之前'),(34,1,0,'日志写入完成','log_write_done','cmf','日志写入完成'),(35,1,1,'后台模板切换','switch_admin_theme','cmf','后台模板切换'),(36,1,1,'验证码图片','captcha_image','cmf','验证码图片'),(37,2,1,'后台模板设计界面','admin_theme_design_view','admin','后台模板设计界面'),(38,2,1,'后台设置网站信息界面','admin_setting_site_view','admin','后台设置网站信息界面'),(39,2,1,'后台清除缓存界面','admin_setting_clear_cache_view','admin','后台清除缓存界面'),(40,2,1,'后台导航管理界面','admin_nav_index_view','admin','后台导航管理界面'),(41,2,1,'后台友情链接管理界面','admin_link_index_view','admin','后台友情链接管理界面'),(42,2,1,'后台幻灯片管理界面','admin_slide_index_view','admin','后台幻灯片管理界面'),(43,2,1,'后台管理员列表界面','admin_user_index_view','admin','后台管理员列表界面'),(44,2,1,'后台角色管理界面','admin_rbac_index_view','admin','后台角色管理界面'),(45,2,1,'门户后台文章管理列表界面','portal_admin_article_index_view','portal','门户后台文章管理列表界面'),(46,2,1,'门户后台文章分类管理列表界面','portal_admin_category_index_view','portal','门户后台文章分类管理列表界面'),(47,2,1,'门户后台页面管理列表界面','portal_admin_page_index_view','portal','门户后台页面管理列表界面'),(48,2,1,'门户后台文章标签管理列表界面','portal_admin_tag_index_view','portal','门户后台文章标签管理列表界面'),(49,2,1,'用户管理本站用户列表界面','user_admin_index_view','user','用户管理本站用户列表界面'),(50,2,1,'资源管理列表界面','user_admin_assjl_index_view','user','资源管理列表界面'),(51,2,1,'用户管理第三方用户列表界面','user_admin_oauth_index_view','user','用户管理第三方用户列表界面'),(52,2,1,'后台首页界面','admin_index_index_view','admin','后台首页界面'),(53,2,1,'后台回收站界面','admin_recycle_bin_index_view','admin','后台回收站界面'),(54,2,1,'后台菜单管理界面','admin_menu_index_view','admin','后台菜单管理界面'),(55,2,1,'后台自定义登录是否开启钩子','admin_custom_login_open','admin','后台自定义登录是否开启钩子'),(56,4,0,'门户后台文章添加编辑界面右侧栏','portal_admin_article_edit_view_right_sidebar','portal','门户后台文章添加编辑界面右侧栏'),(57,4,0,'门户后台文章添加编辑界面主要内容','portal_admin_article_edit_view_main','portal','门户后台文章添加编辑界面主要内容'),(58,2,1,'门户后台文章添加界面','portal_admin_article_add_view','portal','门户后台文章添加界面'),(59,2,1,'门户后台文章编辑界面','portal_admin_article_edit_view','portal','门户后台文章编辑界面'),(60,2,1,'门户后台文章分类添加界面','portal_admin_category_add_view','portal','门户后台文章分类添加界面'),(61,2,1,'门户后台文章分类编辑界面','portal_admin_category_edit_view','portal','门户后台文章分类编辑界面'),(62,2,1,'门户后台页面添加界面','portal_admin_page_add_view','portal','门户后台页面添加界面'),(63,2,1,'门户后台页面编辑界面','portal_admin_page_edit_view','portal','门户后台页面编辑界面'),(64,2,1,'后台幻灯片页面列表界面','admin_slide_item_index_view','admin','后台幻灯片页面列表界面'),(65,2,1,'后台幻灯片页面添加界面','admin_slide_item_add_view','admin','后台幻灯片页面添加界面'),(66,2,1,'后台幻灯片页面编辑界面','admin_slide_item_edit_view','admin','后台幻灯片页面编辑界面'),(67,2,1,'后台管理员添加界面','admin_user_add_view','admin','后台管理员添加界面'),(68,2,1,'后台管理员编辑界面','admin_user_edit_view','admin','后台管理员编辑界面'),(69,2,1,'后台角色添加界面','admin_rbac_role_add_view','admin','后台角色添加界面'),(70,2,1,'后台角色编辑界面','admin_rbac_role_edit_view','admin','后台角色编辑界面'),(71,2,1,'后台角色授权界面','admin_rbac_authorize_view','admin','后台角色授权界面'),(72,1,1,'生成钱包','generate_wallet','cmf','生成钱包'),(73,1,1,'生成行情','generate_ticker','cmf','生成行情'),(74,1,1,'新用户注册','after_register','cmf','新用户注册'),(75,2,1,'资源管理列表界面','user_admin_asset_index_view','user','资源管理列表界面');

/*Table structure for table `jl_hook_plugin` */

CREATE TABLE `jl_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

/*Data for the table `jl_hook_plugin` */

insert  into `jl_hook_plugin`(`id`,`list_order`,`status`,`hook`,`plugin`) values (3,10000,1,'send_mobile_verification_code','JuheMobileCode'),(4,10000,1,'send_mobile_verification_code','MobileCodeDemo'),(7,10000,1,'generate_wallet','Wallet'),(8,10000,1,'generate_ticker','Wallet'),(9,10000,1,'after_register','NewUser');

/*Table structure for table `jl_option` */

CREATE TABLE `jl_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='全站配置表';

/*Data for the table `jl_option` */

insert  into `jl_option`(`id`,`autoload`,`option_name`,`option_value`) values (1,1,'site_info','{\"site_name\":\"Wallet API\",\"site_seo_title\":\"Wallet API\",\"site_seo_keywords\":\"Wallet API\",\"site_seo_description\":\"Wallet API\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}'),(2,1,'storage','{\"storages\":[]}'),(3,1,'smtp_setting','{\"from_name\":\"\",\"from\":\"\",\"host\":\"\",\"smtp_secure\":\"\",\"port\":\"\",\"username\":\"\",\"password\":\"\"}'),(4,1,'email_template_verification_code','{\"subject\":\"\\u9a8c\\u8bc1\\u7801\",\"template\":\"&lt;p&gt;\\u60a8\\u7684\\u9a8c\\u8bc1\\u7801\\u4e3a{$code}&lt;\\/p&gt;\"}'),(10,1,'cmf_settings','{\"open_registration\":\"1\",\"banned_usernames\":\"\"}'),(11,1,'cdn_settings','{\"cdn_static_root\":\"\"}'),(12,1,'admin_settings','{\"admin_password\":\"\"}'),(13,1,'sys_config','{\"turnout_audit1\":\"1\",\"turnout_audit2\":\"1\",\"notify_url\":\"http:\\/\\/robot.mydbc.cn\\/api\\/wallet\\/notify\",\"huizong_auto\":\"1\",\"huizong_interval\":\"100\",\"huizong_min\":\"0.001\",\"huizong_max\":\"1\",\"md5_key\":\"wallet208889\",\"fee_address\":\"\",\"wallet_address\":\"\",\"seed\":\"\"}'),(14,1,'upload_setting','{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv,php1,php2,php3,php4,php5\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}}'),(15,1,'CheckBlockSeek','1'),(16,1,'check_block_seek','{\"value\":1,\"time\":1619432907}');

/*Table structure for table `jl_plugin` */

CREATE TABLE `jl_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

/*Data for the table `jl_plugin` */

insert  into `jl_plugin`(`id`,`type`,`has_admin`,`status`,`create_time`,`name`,`title`,`demo_url`,`hooks`,`author`,`author_url`,`version`,`description`,`config`) values (3,1,0,1,0,'JuheMobileCode','聚合手机验证码','','','Kinlink','','1.0','聚合手机验证码插件','{\"app_key\":\"8478fd7711a2fa4979e16413f663dd81\",\"template_id\":\"28551\",\"expire_minute\":\"30\"}'),(4,1,0,1,0,'MobileCodeDemo','手机验证码演示插件','','','ThinkCMF','','1.0','手机验证码演示插件','{\"account_sid\":\"\",\"auth_token\":\"\",\"app_id\":\"\",\"template_id\":\"\",\"expire_minute\":\"30\"}'),(8,1,0,1,0,'Wallet','钱包生成插件','','','Kinlink','','1.0','钱包生成插件','{\"default_coins\":\"BTC,ETH,USDT,EOS,XRP,LTC,ETC\",\"default_tickers\":\"1,2,3,4,5,6\"}'),(9,1,0,1,0,'NewUser','新用户注册后事件插件','','','Kinlink','','1.0','新用户注册后事件插件','[]');

/*Table structure for table `jl_recycle_bin` */

CREATE TABLE `jl_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

/*Data for the table `jl_recycle_bin` */

/*Table structure for table `jl_role` */

CREATE TABLE `jl_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

/*Data for the table `jl_role` */

insert  into `jl_role`(`id`,`parent_id`,`status`,`create_time`,`update_time`,`list_order`,`name`,`remark`) values (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！'),(2,0,1,1329633709,1329633709,0,'普通管理员','权限由最高管理员分配！');

/*Table structure for table `jl_role_user` */

CREATE TABLE `jl_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

/*Data for the table `jl_role_user` */

insert  into `jl_role_user`(`id`,`role_id`,`user_id`) values (1,2,8000037),(2,1,8000037);

/*Table structure for table `jl_route` */

CREATE TABLE `jl_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

/*Data for the table `jl_route` */

insert  into `jl_route`(`id`,`list_order`,`status`,`type`,`full_url`,`url`) values (1,5000,1,2,'portal/List/index?id=4','资讯'),(2,4999,1,2,'portal/Article/index?cid=4','资讯/:id'),(3,10000,1,1,'user/Register/index','register$'),(4,10000,1,1,'user/Login/index','login$');

/*Table structure for table `jl_theme` */

CREATE TABLE `jl_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jl_theme` */

insert  into `jl_theme`(`id`,`create_time`,`update_time`,`status`,`is_compiled`,`theme`,`name`,`version`,`demo_url`,`thumbnail`,`author`,`author_url`,`lang`,`keywords`,`description`) values (1,0,0,0,0,'simpleboot3','simpleboot3','1.0.2','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','zh-cn','ThinkCMF模板','ThinkCMF默认模板');

/*Table structure for table `jl_theme_file` */

CREATE TABLE `jl_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `jl_theme_file` */

insert  into `jl_theme_file`(`id`,`is_public`,`list_order`,`theme`,`name`,`action`,`file`,`description`,`more`,`config_more`,`draft_more`) values (7,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL),(8,1,1,'simpleboot3','导航条','public/Nav','public/nav','导航条模板文件','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"TK\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL);

/*Table structure for table `jl_transfer_log` */

CREATE TABLE `jl_transfer_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_no` varchar(255) NOT NULL DEFAULT '' COMMENT '自有业务系统流水号',
  `wallet_id` int(11) NOT NULL COMMENT '钱包名称',
  `to_wallet_id` int(11) NOT NULL DEFAULT '0' COMMENT '内部互转 对方钱包ID',
  `type` int(11) NOT NULL COMMENT '1.外部转出 2.内部之间转出 3 转入  4汇总  5手续费转账',
  `coin_symbol` varchar(255) NOT NULL COMMENT '币种名称',
  `from_address` varchar(255) NOT NULL DEFAULT '' COMMENT '转账地址',
  `to_address` varchar(255) NOT NULL DEFAULT '' COMMENT '转账地址',
  `to_memo` varchar(255) NOT NULL DEFAULT '' COMMENT 'to Memo',
  `amount` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '转账数量',
  `amount_before` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '转账前余额',
  `amount_after` decimal(30,18) DEFAULT '0.000000000000000000' COMMENT '转账后余额',
  `fee` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '转账手续费',
  `log_time` int(11) NOT NULL DEFAULT '0' COMMENT '转账时间',
  `tx_id` varchar(255) NOT NULL DEFAULT '' COMMENT '链上交易ID',
  `blockhash` varchar(255) NOT NULL DEFAULT '' COMMENT '区块hash',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `fee_status` int(2) NOT NULL DEFAULT '0' COMMENT '汇总时 0未打入手续费 2已经提交转入 1成功',
  `transfer_status` int(2) NOT NULL DEFAULT '0' COMMENT '-1 失败 0等待处理 2转账中 1 转账成功',
  `notify_status` int(2) NOT NULL DEFAULT '0' COMMENT '回调通知状态 -1失败 0未通知 1成功',
  `audit_status` int(2) NOT NULL DEFAULT '0' COMMENT '0 未审批  1已经审批',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE,
  KEY `coin_symbol` (`coin_symbol`(191)) USING BTREE,
  KEY `transfer_status` (`transfer_status`) USING BTREE,
  KEY `log_time` (`log_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jl_transfer_log` */

/*Table structure for table `jl_user` */

CREATE TABLE `jl_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

/*Data for the table `jl_user` */

insert  into `jl_user`(`id`,`user_type`,`sex`,`birthday`,`last_login_time`,`score`,`coin`,`balance`,`create_time`,`user_status`,`user_login`,`user_pass`,`user_nickname`,`user_email`,`user_url`,`avatar`,`signature`,`last_login_ip`,`user_activation_key`,`mobile`,`more`) values (1,1,0,0,1619425925,0,0,'0.00',1544752977,1,'admin','###55aa459470cd2030f9e008221e05c5d9','admin','test@qq.com','','','','222.211.27.195','','13153985783',NULL);

/*Table structure for table `jl_user_action` */

CREATE TABLE `jl_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

/*Data for the table `jl_user_action` */

/*Table structure for table `jl_user_action_log` */

CREATE TABLE `jl_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`) USING BTREE,
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

/*Data for the table `jl_user_action_log` */

/*Table structure for table `jl_user_favorite` */

CREATE TABLE `jl_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

/*Data for the table `jl_user_favorite` */

/*Table structure for table `jl_user_like` */

CREATE TABLE `jl_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

/*Data for the table `jl_user_like` */

/*Table structure for table `jl_user_login_attempt` */

CREATE TABLE `jl_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户登录尝试表';

/*Data for the table `jl_user_login_attempt` */

/*Table structure for table `jl_user_token` */

CREATE TABLE `jl_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

/*Data for the table `jl_user_token` */

insert  into `jl_user_token`(`id`,`user_id`,`expire_time`,`create_time`,`token`,`device_type`) values (28,1,1622792109,1607240109,'80dcea56f46037d46a93c85482e25a1160d4b635d21e16b15f88377c182094ac','web');

/*Table structure for table `jl_verification_code` */

CREATE TABLE `jl_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

/*Data for the table `jl_verification_code` */

/*Table structure for table `jl_wallet` */

CREATE TABLE `jl_wallet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL DEFAULT '' COMMENT '自有系统用户ID',
  `coin_symbol` varchar(255) NOT NULL DEFAULT '' COMMENT '币种符号',
  `chain_balance` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '链上正式余额',
  `chain_balance_fee` decimal(30,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '手续费余额（代币专用）',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '币种地址',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT 'memo信息',
  `seed` varchar(255) NOT NULL DEFAULT '' COMMENT '钱包种子等信息',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后添加时间',
  `turnout_status` int(11) NOT NULL DEFAULT '1' COMMENT '转出状态',
  `depot_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否为汇总钱包',
  `fee_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否为手续费钱包（代币专用）',
  `pay_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否为出款账户',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '钱包状态',
  PRIMARY KEY (`id`),
  KEY `coin_symbol` (`coin_symbol`(191)) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `jl_admin_action_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` text NOT NULL,
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

/*Data for the table `jl_wallet` */
alter table jl_transfer_log add send_code int (2)  not null  default 1 COMMENT '0 未发送 1 已经发送 ';
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
