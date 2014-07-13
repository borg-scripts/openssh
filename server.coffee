module.exports = ->
  @import __dirname, 'attributes', 'default'

  @then @install, "openssh-server"

  @then @template, [__dirname, 'templates', 'default', "sshd_config"],
    to: "/etc/ssh/sshd_config"
    sudo: true
    owner: "root"
    group: "root"
    mode: "0644"

  @then @service, 'ssh', action: 'restart'
