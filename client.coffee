module.exports = ->
  @import __dirname, 'attributes', 'default'

  @then @install "openssh-client"

  @then @template [__dirname, 'templates', 'default', "ssh_config"],
    to: "/etc/ssh/ssh_config"
    sudo: true
    owner: "root"
    group: "root"
    mode: "0644"
