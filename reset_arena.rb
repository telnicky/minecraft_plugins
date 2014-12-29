class ResetArenaPlugin
  include Purugin::Plugin
  description 'Reset Arena', 0.1

  def on_enable
    public_command('reset_arena', "Reset the capture the flag arena") do |player, *args|
      player.perform_command("//pos1 -489,88,373")
      player.perform_command("//pos2 -486,88,373")
      player.perform_command("//replace gold")
    end
  end
end
