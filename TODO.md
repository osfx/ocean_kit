# OceanKit tasks


### Resources & Actions.

##### **Droplet resource**

* [x] `client.droplets.all()`
* [x] `client.droplets.all(tag_name: 'tag_name')`
* [x] `client.droplets.find(id: 'id')`
* [x] `client.droplets.create(droplet)`
* [ ] `client.droplets.create_multiple(droplet)`
* [x] `client.droplets.delete(id: 'id')`
* [x] `client.droplets.delete_for_tag(tag_name: 'tag_name')`
* [x] `client.droplets.kernels(id)`
* [x] `client.droplets.snapshots(id)`
* [x] `client.droplets.backups(id)`
* [x] `client.droplets.actions(id)`

##### **Droplet Action resource**

* [ ] `client.droplet_actions.reboot(droplet_id: droplet.id)`
* [x] `client.droplet_actions.power_cycle(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.power_cycle_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.shutdown(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.shutdown_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.power_off(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.power_off_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.power_on(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.power_on_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.password_reset(droplet_id: droplet.id)`
* [x] `client.droplet_actions.enable_ipv6(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.enable_ipv6_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.enable_backups(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.enable_backups_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.disable_backups(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.disable_backups_for_tag(tag: 'tag_name')`
* [ ] `client.droplet_actions.upgrade(droplet_id: droplet.id)`
* [x] `client.droplet_actions.enable_private_networking(droplet_id: droplet.id)`
* [ ] `client.droplet_actions.enable_private_networking_for_tag(tag: 'tag_name')`
* [x] `client.droplet_actions.snapshot(droplet_id: droplet.id, name: 'Snapshot Name')`
* [ ] `client.droplet_actions.snapshot_for_tag(tag: 'tag_name', name: 'Snapshot Name')`
* [x] `client.droplet_actions.change_kernel(droplet_id: droplet.id, kernel: 'kernel_id')`
* [x] `client.droplet_actions.rename(droplet_id: droplet.id, name: 'New-Droplet-Name')`
* [x] `client.droplet_actions.rebuild(droplet_id: droplet.id, image: 'image_id')`
* [x] `client.droplet_actions.restore(droplet_id: droplet.id, image: 'image_id')`
* [x] `client.droplet_actions.resize(droplet_id: droplet.id, size: '1gb')`
* [ ] `client.droplet_actions.find(droplet_id: droplet.id, id: action.id)`
* [ ] `client.droplet_actions.action_for_id(droplet_id: droplet.id, type: 'event_name', param: 'v[ ] alue')`
* [ ] `client.droplet_actions.action_for_tag(tag: 'tag_name', type: 'event_name', param: 'value')`

##### **Domain resource**
* [x] `client.domains.all()`
* [x] `client.domains.create(domain)`
* [x] `client.domains.find(name: 'name')`
* [x] `client.domains.delete(name: 'name')`


##### **Domain record resource**

* [x] `client.domain_records.all(for_domain: 'for_domain')`
* [x] `client.domain_records.create(domain_record, for_domain: 'for_domain')`
* [x] `client.domain_records.find(for_domain: 'for_domain', id: 'id')`
* [x] `client.domain_records.delete(for_domain: 'for_domain', id: 'id')`
* [x] `client.domain_records.update(domain_record, for_domain: 'for_domain', id: 'id')`


##### **Image resource**

* [x] `client.images.all()`
* [x] `client.images.find(id: 'id')`
* [x] `client.images.delete(id: 'id')`
* [x] `client.images.update(image, id: 'id')`
* [x] `client.images.all_distribution`
* [x] `client.images.all_application`
* [x] `client.images.all_private`

##### **Image Action Resource**

* [x] `client.image_actions.all(id)`
* [ ] `client.image_actions.find(image_id: 123, id: 123455)`
* [x] `client.image_actions.convert_to_snapshot(id)`
* [x] `client.image_actions.transfer(image_id: 123, region: 'nyc3')`


##### **Region resource**
* [x] `client.regions.all()`


##### **Size resource**
* [x] `client.sizes.all()`

##### **SSH key resource**

* [x]`client.ssh_keys.all()`
* [x]`client.ssh_keys.create(ssh_key)`
* [x]`client.ssh_keys.find(id: 'id')`
* [x]`client.ssh_keys.delete(id: 'id')`
* [x]`client.ssh_keys.update(ssh_key, id: 'id')`

##### **Account resource**
* [x] `client.account.info()`

##### **Floating IP resource**
* [x] `client.floating_ips.all()`
* [x] `client.floating_ips.find(ip: 'ip address')`
* [x] `client.floating_ips.create(floating_ip)`
* [x] `client.floating_ips.delete(ip: 'ip address')`

##### **Floating IP Action resource**

* [x]`client.floating_ip_actions.assign(ip: floating_ip.ip, droplet_id: droxlet.id)`
* [x]`client.floating_ip_actions.unassign(ip: floating_ip.ip)`

##### **Volume resource**

* [x] `client.volumes.all()`
* [x] `client.volumes.find(id: 'id')`
* [x] `client.volumes.create(volume)`
* [x] `client.volumes.snapshots(id: 'id')`
* [x] `client.volumes.create_snapshot(id: 'id', name: 'snapshot-name')`
* [x] `client.volumes.delete(id: 'id')`

##### **Volume Action resource**

* [x] `client.volume_actions.attach(volume_id: volume.id, droplet_id: droxlet.id, region: droplet.region.slug)`
* [x] `client.volume_actions.detach(volume_id: volume.id, droplet_id: droxlet.id, region: droplet.region.slug)`
* [x] `client.volume_actions.resize(volume_id: volume.id, size_gigabytes: 123, region: droplet.region.slug)`

##### **Volume resource**

* [x] `client.snapshots.all(resource_type: 'droplet')`
* [x] `client.snapshots.find(id: 'id')`
* [x] `client.snapshots.delete(id: 'id')`
