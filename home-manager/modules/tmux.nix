{ config, pkgs, ... }:
{
	home.file = {
		#tmux
		".tmux/plugins/tpm/HOW_TO_PLUGIN.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/HOW_TO_PLUGIN.md;
		".tmux/plugins/tpm/tpm".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tpm;
		".tmux/plugins/tpm/docs/managing_plugins_via_cmd_line.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/docs/managing_plugins_via_cmd_line.md;
		".tmux/plugins/tpm/docs/how_to_create_plugin.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/docs/how_to_create_plugin.md;
		".tmux/plugins/tpm/docs/tpm_not_working.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/docs/tpm_not_working.md;
		".tmux/plugins/tpm/docs/changing_plugins_install_dir.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/docs/changing_plugins_install_dir.md;
		".tmux/plugins/tpm/docs/automatic_tpm_installation.md".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/docs/automatic_tpm_installation.md;
		".tmux/plugins/tpm/tests/expect_successful_update_of_all_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_successful_update_of_all_plugins;
		".tmux/plugins/tpm/tests/test_plugin_installation.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/test_plugin_installation.sh;
		".tmux/plugins/tpm/tests/test_plugin_sourcing.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/test_plugin_sourcing.sh;
		".tmux/plugins/tpm/tests/test_plugin_installation_legacy.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/test_plugin_installation_legacy.sh;
		".tmux/plugins/tpm/tests/expect_failed_plugin_download".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_failed_plugin_download;
		".tmux/plugins/tpm/tests/expect_successful_clean_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_successful_clean_plugins;
		".tmux/plugins/tpm/tests/expect_successful_update_of_a_single_plugin".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_successful_update_of_a_single_plugin;
		".tmux/plugins/tpm/tests/test_plugin_clean.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/test_plugin_clean.sh;
		".tmux/plugins/tpm/tests/expect_successful_multiple_plugins_download".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_successful_multiple_plugins_download;
		".tmux/plugins/tpm/tests/expect_successful_plugin_download".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/expect_successful_plugin_download;
		".tmux/plugins/tpm/tests/test_plugin_update.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/test_plugin_update.sh;
		".tmux/plugins/tpm/tests/helpers/tpm.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/tests/helpers/tpm.sh;
		".tmux/plugins/tpm/bindings/clean_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bindings/clean_plugins;
		".tmux/plugins/tpm/bindings/update_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bindings/update_plugins;
		".tmux/plugins/tpm/bindings/install_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bindings/install_plugins;
		".tmux/plugins/tpm/bin/clean_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bin/clean_plugins;
		".tmux/plugins/tpm/bin/update_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bin/update_plugins;
		".tmux/plugins/tpm/bin/install_plugins".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/bin/install_plugins;
		".tmux/plugins/tpm/scripts/update_plugin.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/update_plugin.sh;
		".tmux/plugins/tpm/scripts/clean_plugins.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/clean_plugins.sh;
		".tmux/plugins/tpm/scripts/check_tmux_version.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/check_tmux_version.sh;
		".tmux/plugins/tpm/scripts/install_plugins.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/install_plugins.sh;
		".tmux/plugins/tpm/scripts/update_plugin_prompt_handler.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/update_plugin_prompt_handler.sh;
		".tmux/plugins/tpm/scripts/variables.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/variables.sh;
		".tmux/plugins/tpm/scripts/source_plugins.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/source_plugins.sh;
		".tmux/plugins/tpm/scripts/helpers/tmux_utils.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/helpers/tmux_utils.sh;
		".tmux/plugins/tpm/scripts/helpers/shell_echo_functions.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/helpers/shell_echo_functions.sh;
		".tmux/plugins/tpm/scripts/helpers/utility.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/helpers/utility.sh;
		".tmux/plugins/tpm/scripts/helpers/tmux_echo_functions.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/helpers/tmux_echo_functions.sh;
		".tmux/plugins/tpm/scripts/helpers/plugin_functions.sh".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tpm/scripts/helpers/plugin_functions.sh;
		".tmux/plugins/tmux/rose-pine.tmux".source = ../home-manager/dotfiles/tmux-stuff/tmux/plugins/tmux/rose-pine.tmux;
	};
}