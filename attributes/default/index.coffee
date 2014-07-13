module.exports = ->
  @default openssh:
    client:
      Host: "*"
    server:
      ChallengeResponseAuthentication: "no"
      UsePAM: "yes"
      PrintMotd: 'no'
      PrintLastLog: 'no'
