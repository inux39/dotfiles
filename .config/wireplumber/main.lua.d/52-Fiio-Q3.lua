monitor.alsa.rules = [
{
    matches = [
    {
        node.name = "~alsa_output.usb-GuangZhou_FiiO_Electronics_Co._Ltd_FiiO_Q3-00.*"
    }
    ]
    actions = {
        update-props = {
            audio.format = "S32_LE"
            session.suspend-timeout-seconds = 0
            api.alsa.period-size = 128
        }
    }
}
]

