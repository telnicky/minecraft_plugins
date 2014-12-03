class DigPlugin
	include Purugin::Plugin
	description 'Dig', 0.1

  def on_enable
    state = {}
    public_command('dig', 'dig down!', '/dig {distance}') do |player, *args|
      depth = args[0].to_i || 1
      state[player.name] = depth
      player.msg("depth has been set to #{ depth }")
    end

    event(:block_break) do |event|
      return unless state[event.player.name]

      state[event.player.name].times do
        event.block.block_at(:down, counter).change_type(:air)
      end
    end
  end
end
