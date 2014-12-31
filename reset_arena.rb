class ResetArenaPlugin
  include Purugin::Plugin
  description 'Reset Arena', 0.1

  def on_enable
    public_command('reset_arena', "Reset the capture the flag arena") do |player, *args|
      player.msg("Reseting...")
      # TODO: need to update commands
      server.dispatch_command(player, "/pos1 -489,88,373")
      server.dispatch_command(player, "/pos2 -486,88,373")
      server.dispatch_command(player, "/replace gold")
    end
  end
end
