module OceanKit
  module Resource
    class DropletAction

      def droplet_actions
        self
      end

      def reboot(id)
        post("/droplets/#{id}/actions", {"type": "reboot"})
      end

      def power_cycle(id)
        post("/droplets/#{id}/actions", {"type": "power_cycle"})
      end

      def shutdown(id)
        post("/droplets/#{id}/actions", {"type": "shutdown"})
      end

      def power_off
        post("/droplets/#{id}/actions", {"type": "power_off"})
      end

      def power_on
        post("/droplets/#{id}/actions", {"type": "power_on"})
      end

      def password_reset(id)
        post("/droplets/#{id}/actions", {"type": "password_reset"})
      end

      def enable_ipv6
        post("/droplets/#{id}/actions", {"type": "enable_ipv6"})
      end

      def enable_backups(id)
        post("/droplets/#{id}/actions", {"type": "enable_backups"})
      end

      def disable_backups(id)
        post("/droplets/#{id}/actions", {"type": "disable_backups"})
      end

      def rebuild(id, name)
        post("/droplets/#{id}/actions", %({"type":"rebuild","image":"#{name}"}))
      end

      def restore(id)
        post("/droplets/#{id}/actions", {"type": "restore"})
      end
    end
  end
end
