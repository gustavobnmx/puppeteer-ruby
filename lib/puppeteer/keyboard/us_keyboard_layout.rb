class Puppeteer::Keyboard
  # * @typedef {Object} KeyDefinition
  # * @property {number=} keyCode
  # * @property {number=} shiftKeyCode
  # * @property {string=} key
  # * @property {string=} shiftKey
  # * @property {string=} code
  # * @property {string=} text
  # * @property {string=} shiftText
  # * @property {number=} location
  class KeyDefinition
    def initialize(hash)
      @key_code = hash[:keyCode]
      @shift_key_code = hash[:shiftKeyCode]
      @key = hash[:key]
      @shift_key = hash[:shiftKey]
      @code = hash[:code]
      @text = hash[:text]
      @shift_text = hash[:shiftText]
      @location = hash[:location]
    end

    attr_reader :key_code, :key, :code, :text, :shift_key_code, :shift_key, :shift_text, :location
  end

  KEY_DEFINITIONS = {
    '0': KeyDefinition.new({ 'keyCode': 48, 'key': '0', 'code': 'Digit0' }),
    '1': KeyDefinition.new({ 'keyCode': 49, 'key': '1', 'code': 'Digit1' }),
    '2': KeyDefinition.new({ 'keyCode': 50, 'key': '2', 'code': 'Digit2' }),
    '3': KeyDefinition.new({ 'keyCode': 51, 'key': '3', 'code': 'Digit3' }),
    '4': KeyDefinition.new({ 'keyCode': 52, 'key': '4', 'code': 'Digit4' }),
    '5': KeyDefinition.new({ 'keyCode': 53, 'key': '5', 'code': 'Digit5' }),
    '6': KeyDefinition.new({ 'keyCode': 54, 'key': '6', 'code': 'Digit6' }),
    '7': KeyDefinition.new({ 'keyCode': 55, 'key': '7', 'code': 'Digit7' }),
    '8': KeyDefinition.new({ 'keyCode': 56, 'key': '8', 'code': 'Digit8' }),
    '9': KeyDefinition.new({ 'keyCode': 57, 'key': '9', 'code': 'Digit9' }),
    'Power': KeyDefinition.new({ 'key': 'Power', 'code': 'Power' }),
    'Eject': KeyDefinition.new({ 'key': 'Eject', 'code': 'Eject' }),
    'Abort': KeyDefinition.new({ 'keyCode': 3, 'code': 'Abort', 'key': 'Cancel' }),
    'Help': KeyDefinition.new({ 'keyCode': 6, 'code': 'Help', 'key': 'Help' }),
    'Backspace': KeyDefinition.new({ 'keyCode': 8, 'code': 'Backspace', 'key': 'Backspace' }),
    'Tab': KeyDefinition.new({ 'keyCode': 9, 'code': 'Tab', 'key': 'Tab' }),
    'Numpad5': KeyDefinition.new({ 'keyCode': 12, 'shiftKeyCode': 101, 'key': 'Clear', 'code': 'Numpad5', 'shiftKey': '5', 'location': 3 }),
    'NumpadEnter': KeyDefinition.new({ 'keyCode': 13, 'code': 'NumpadEnter', 'key': 'Enter', 'text': "\r", 'location': 3 }),
    'Enter': KeyDefinition.new({ 'keyCode': 13, 'code': 'Enter', 'key': 'Enter', 'text': "\r" }),
    "\r": KeyDefinition.new({ 'keyCode': 13, 'code': 'Enter', 'key': 'Enter', 'text': "\r" }),
    "\n": KeyDefinition.new({ 'keyCode': 13, 'code': 'Enter', 'key': 'Enter', 'text': "\r" }),
    'ShiftLeft': KeyDefinition.new({ 'keyCode': 16, 'code': 'ShiftLeft', 'key': 'Shift', 'location': 1 }),
    'ShiftRight': KeyDefinition.new({ 'keyCode': 16, 'code': 'ShiftRight', 'key': 'Shift', 'location': 2 }),
    'ControlLeft': KeyDefinition.new({ 'keyCode': 17, 'code': 'ControlLeft', 'key': 'Control', 'location': 1 }),
    'ControlRight': KeyDefinition.new({ 'keyCode': 17, 'code': 'ControlRight', 'key': 'Control', 'location': 2 }),
    'AltLeft': KeyDefinition.new({ 'keyCode': 18, 'code': 'AltLeft', 'key': 'Alt', 'location': 1 }),
    'AltRight': KeyDefinition.new({ 'keyCode': 18, 'code': 'AltRight', 'key': 'Alt', 'location': 2 }),
    'Pause': KeyDefinition.new({ 'keyCode': 19, 'code': 'Pause', 'key': 'Pause' }),
    'CapsLock': KeyDefinition.new({ 'keyCode': 20, 'code': 'CapsLock', 'key': 'CapsLock' }),
    'Escape': KeyDefinition.new({ 'keyCode': 27, 'code': 'Escape', 'key': 'Escape' }),
    'Convert': KeyDefinition.new({ 'keyCode': 28, 'code': 'Convert', 'key': 'Convert' }),
    'NonConvert': KeyDefinition.new({ 'keyCode': 29, 'code': 'NonConvert', 'key': 'NonConvert' }),
    'Space': KeyDefinition.new({ 'keyCode': 32, 'code': 'Space', 'key': ' ' }),
    'Numpad9': KeyDefinition.new({ 'keyCode': 33, 'shiftKeyCode': 105, 'key': 'PageUp', 'code': 'Numpad9', 'shiftKey': '9', 'location': 3 }),
    'PageUp': KeyDefinition.new({ 'keyCode': 33, 'code': 'PageUp', 'key': 'PageUp' }),
    'Numpad3': KeyDefinition.new({ 'keyCode': 34, 'shiftKeyCode': 99, 'key': 'PageDown', 'code': 'Numpad3', 'shiftKey': '3', 'location': 3 }),
    'PageDown': KeyDefinition.new({ 'keyCode': 34, 'code': 'PageDown', 'key': 'PageDown' }),
    'End': KeyDefinition.new({ 'keyCode': 35, 'code': 'End', 'key': 'End' }),
    'Numpad1': KeyDefinition.new({ 'keyCode': 35, 'shiftKeyCode': 97, 'key': 'End', 'code': 'Numpad1', 'shiftKey': '1', 'location': 3 }),
    'Home': KeyDefinition.new({ 'keyCode': 36, 'code': 'Home', 'key': 'Home' }),
    'Numpad7': KeyDefinition.new({ 'keyCode': 36, 'shiftKeyCode': 103, 'key': 'Home', 'code': 'Numpad7', 'shiftKey': '7', 'location': 3 }),
    'ArrowLeft': KeyDefinition.new({ 'keyCode': 37, 'code': 'ArrowLeft', 'key': 'ArrowLeft' }),
    'Numpad4': KeyDefinition.new({ 'keyCode': 37, 'shiftKeyCode': 100, 'key': 'ArrowLeft', 'code': 'Numpad4', 'shiftKey': '4', 'location': 3 }),
    'Numpad8': KeyDefinition.new({ 'keyCode': 38, 'shiftKeyCode': 104, 'key': 'ArrowUp', 'code': 'Numpad8', 'shiftKey': '8', 'location': 3 }),
    'ArrowUp': KeyDefinition.new({ 'keyCode': 38, 'code': 'ArrowUp', 'key': 'ArrowUp' }),
    'ArrowRight': KeyDefinition.new({ 'keyCode': 39, 'code': 'ArrowRight', 'key': 'ArrowRight' }),
    'Numpad6': KeyDefinition.new({ 'keyCode': 39, 'shiftKeyCode': 102, 'key': 'ArrowRight', 'code': 'Numpad6', 'shiftKey': '6', 'location': 3 }),
    'Numpad2': KeyDefinition.new({ 'keyCode': 40, 'shiftKeyCode': 98, 'key': 'ArrowDown', 'code': 'Numpad2', 'shiftKey': '2', 'location': 3 }),
    'ArrowDown': KeyDefinition.new({ 'keyCode': 40, 'code': 'ArrowDown', 'key': 'ArrowDown' }),
    'Select': KeyDefinition.new({ 'keyCode': 41, 'code': 'Select', 'key': 'Select' }),
    'Open': KeyDefinition.new({ 'keyCode': 43, 'code': 'Open', 'key': 'Execute' }),
    'PrintScreen': KeyDefinition.new({ 'keyCode': 44, 'code': 'PrintScreen', 'key': 'PrintScreen' }),
    'Insert': KeyDefinition.new({ 'keyCode': 45, 'code': 'Insert', 'key': 'Insert' }),
    'Numpad0': KeyDefinition.new({ 'keyCode': 45, 'shiftKeyCode': 96, 'key': 'Insert', 'code': 'Numpad0', 'shiftKey': '0', 'location': 3 }),
    'Delete': KeyDefinition.new({ 'keyCode': 46, 'code': 'Delete', 'key': 'Delete' }),
    'NumpadDecimal': KeyDefinition.new({ 'keyCode': 46, 'shiftKeyCode': 110, 'code': 'NumpadDecimal', 'key': '\u0000', 'shiftKey': '.', 'location': 3 }),
    'Digit0': KeyDefinition.new({ 'keyCode': 48, 'code': 'Digit0', 'shiftKey': ')', 'key': '0' }),
    'Digit1': KeyDefinition.new({ 'keyCode': 49, 'code': 'Digit1', 'shiftKey': '!', 'key': '1' }),
    'Digit2': KeyDefinition.new({ 'keyCode': 50, 'code': 'Digit2', 'shiftKey': '@', 'key': '2' }),
    'Digit3': KeyDefinition.new({ 'keyCode': 51, 'code': 'Digit3', 'shiftKey': '#', 'key': '3' }),
    'Digit4': KeyDefinition.new({ 'keyCode': 52, 'code': 'Digit4', 'shiftKey': '$', 'key': '4' }),
    'Digit5': KeyDefinition.new({ 'keyCode': 53, 'code': 'Digit5', 'shiftKey': '%', 'key': '5' }),
    'Digit6': KeyDefinition.new({ 'keyCode': 54, 'code': 'Digit6', 'shiftKey': '^', 'key': '6' }),
    'Digit7': KeyDefinition.new({ 'keyCode': 55, 'code': 'Digit7', 'shiftKey': '&', 'key': '7' }),
    'Digit8': KeyDefinition.new({ 'keyCode': 56, 'code': 'Digit8', 'shiftKey': '*', 'key': '8' }),
    'Digit9': KeyDefinition.new({ 'keyCode': 57, 'code': 'Digit9', 'shiftKey': '\(', 'key': '9' }),
    'KeyA': KeyDefinition.new({ 'keyCode': 65, 'code': 'KeyA', 'shiftKey': 'A', 'key': 'a' }),
    'KeyB': KeyDefinition.new({ 'keyCode': 66, 'code': 'KeyB', 'shiftKey': 'B', 'key': 'b' }),
    'KeyC': KeyDefinition.new({ 'keyCode': 67, 'code': 'KeyC', 'shiftKey': 'C', 'key': 'c' }),
    'KeyD': KeyDefinition.new({ 'keyCode': 68, 'code': 'KeyD', 'shiftKey': 'D', 'key': 'd' }),
    'KeyE': KeyDefinition.new({ 'keyCode': 69, 'code': 'KeyE', 'shiftKey': 'E', 'key': 'e' }),
    'KeyF': KeyDefinition.new({ 'keyCode': 70, 'code': 'KeyF', 'shiftKey': 'F', 'key': 'f' }),
    'KeyG': KeyDefinition.new({ 'keyCode': 71, 'code': 'KeyG', 'shiftKey': 'G', 'key': 'g' }),
    'KeyH': KeyDefinition.new({ 'keyCode': 72, 'code': 'KeyH', 'shiftKey': 'H', 'key': 'h' }),
    'KeyI': KeyDefinition.new({ 'keyCode': 73, 'code': 'KeyI', 'shiftKey': 'I', 'key': 'i' }),
    'KeyJ': KeyDefinition.new({ 'keyCode': 74, 'code': 'KeyJ', 'shiftKey': 'J', 'key': 'j' }),
    'KeyK': KeyDefinition.new({ 'keyCode': 75, 'code': 'KeyK', 'shiftKey': 'K', 'key': 'k' }),
    'KeyL': KeyDefinition.new({ 'keyCode': 76, 'code': 'KeyL', 'shiftKey': 'L', 'key': 'l' }),
    'KeyM': KeyDefinition.new({ 'keyCode': 77, 'code': 'KeyM', 'shiftKey': 'M', 'key': 'm' }),
    'KeyN': KeyDefinition.new({ 'keyCode': 78, 'code': 'KeyN', 'shiftKey': 'N', 'key': 'n' }),
    'KeyO': KeyDefinition.new({ 'keyCode': 79, 'code': 'KeyO', 'shiftKey': 'O', 'key': 'o' }),
    'KeyP': KeyDefinition.new({ 'keyCode': 80, 'code': 'KeyP', 'shiftKey': 'P', 'key': 'p' }),
    'KeyQ': KeyDefinition.new({ 'keyCode': 81, 'code': 'KeyQ', 'shiftKey': 'Q', 'key': 'q' }),
    'KeyR': KeyDefinition.new({ 'keyCode': 82, 'code': 'KeyR', 'shiftKey': 'R', 'key': 'r' }),
    'KeyS': KeyDefinition.new({ 'keyCode': 83, 'code': 'KeyS', 'shiftKey': 'S', 'key': 's' }),
    'KeyT': KeyDefinition.new({ 'keyCode': 84, 'code': 'KeyT', 'shiftKey': 'T', 'key': 't' }),
    'KeyU': KeyDefinition.new({ 'keyCode': 85, 'code': 'KeyU', 'shiftKey': 'U', 'key': 'u' }),
    'KeyV': KeyDefinition.new({ 'keyCode': 86, 'code': 'KeyV', 'shiftKey': 'V', 'key': 'v' }),
    'KeyW': KeyDefinition.new({ 'keyCode': 87, 'code': 'KeyW', 'shiftKey': 'W', 'key': 'w' }),
    'KeyX': KeyDefinition.new({ 'keyCode': 88, 'code': 'KeyX', 'shiftKey': 'X', 'key': 'x' }),
    'KeyY': KeyDefinition.new({ 'keyCode': 89, 'code': 'KeyY', 'shiftKey': 'Y', 'key': 'y' }),
    'KeyZ': KeyDefinition.new({ 'keyCode': 90, 'code': 'KeyZ', 'shiftKey': 'Z', 'key': 'z' }),
    'MetaLeft': KeyDefinition.new({ 'keyCode': 91, 'code': 'MetaLeft', 'key': 'Meta', 'location': 1 }),
    'MetaRight': KeyDefinition.new({ 'keyCode': 92, 'code': 'MetaRight', 'key': 'Meta', 'location': 2 }),
    'ContextMenu': KeyDefinition.new({ 'keyCode': 93, 'code': 'ContextMenu', 'key': 'ContextMenu' }),
    'NumpadMultiply': KeyDefinition.new({ 'keyCode': 106, 'code': 'NumpadMultiply', 'key': '*', 'location': 3 }),
    'NumpadAdd': KeyDefinition.new({ 'keyCode': 107, 'code': 'NumpadAdd', 'key': '+', 'location': 3 }),
    'NumpadSubtract': KeyDefinition.new({ 'keyCode': 109, 'code': 'NumpadSubtract', 'key': '-', 'location': 3 }),
    'NumpadDivide': KeyDefinition.new({ 'keyCode': 111, 'code': 'NumpadDivide', 'key': '/', 'location': 3 }),
    'F1': KeyDefinition.new({ 'keyCode': 112, 'code': 'F1', 'key': 'F1' }),
    'F2': KeyDefinition.new({ 'keyCode': 113, 'code': 'F2', 'key': 'F2' }),
    'F3': KeyDefinition.new({ 'keyCode': 114, 'code': 'F3', 'key': 'F3' }),
    'F4': KeyDefinition.new({ 'keyCode': 115, 'code': 'F4', 'key': 'F4' }),
    'F5': KeyDefinition.new({ 'keyCode': 116, 'code': 'F5', 'key': 'F5' }),
    'F6': KeyDefinition.new({ 'keyCode': 117, 'code': 'F6', 'key': 'F6' }),
    'F7': KeyDefinition.new({ 'keyCode': 118, 'code': 'F7', 'key': 'F7' }),
    'F8': KeyDefinition.new({ 'keyCode': 119, 'code': 'F8', 'key': 'F8' }),
    'F9': KeyDefinition.new({ 'keyCode': 120, 'code': 'F9', 'key': 'F9' }),
    'F10': KeyDefinition.new({ 'keyCode': 121, 'code': 'F10', 'key': 'F10' }),
    'F11': KeyDefinition.new({ 'keyCode': 122, 'code': 'F11', 'key': 'F11' }),
    'F12': KeyDefinition.new({ 'keyCode': 123, 'code': 'F12', 'key': 'F12' }),
    'F13': KeyDefinition.new({ 'keyCode': 124, 'code': 'F13', 'key': 'F13' }),
    'F14': KeyDefinition.new({ 'keyCode': 125, 'code': 'F14', 'key': 'F14' }),
    'F15': KeyDefinition.new({ 'keyCode': 126, 'code': 'F15', 'key': 'F15' }),
    'F16': KeyDefinition.new({ 'keyCode': 127, 'code': 'F16', 'key': 'F16' }),
    'F17': KeyDefinition.new({ 'keyCode': 128, 'code': 'F17', 'key': 'F17' }),
    'F18': KeyDefinition.new({ 'keyCode': 129, 'code': 'F18', 'key': 'F18' }),
    'F19': KeyDefinition.new({ 'keyCode': 130, 'code': 'F19', 'key': 'F19' }),
    'F20': KeyDefinition.new({ 'keyCode': 131, 'code': 'F20', 'key': 'F20' }),
    'F21': KeyDefinition.new({ 'keyCode': 132, 'code': 'F21', 'key': 'F21' }),
    'F22': KeyDefinition.new({ 'keyCode': 133, 'code': 'F22', 'key': 'F22' }),
    'F23': KeyDefinition.new({ 'keyCode': 134, 'code': 'F23', 'key': 'F23' }),
    'F24': KeyDefinition.new({ 'keyCode': 135, 'code': 'F24', 'key': 'F24' }),
    'NumLock': KeyDefinition.new({ 'keyCode': 144, 'code': 'NumLock', 'key': 'NumLock' }),
    'ScrollLock': KeyDefinition.new({ 'keyCode': 145, 'code': 'ScrollLock', 'key': 'ScrollLock' }),
    'AudioVolumeMute': KeyDefinition.new({ 'keyCode': 173, 'code': 'AudioVolumeMute', 'key': 'AudioVolumeMute' }),
    'AudioVolumeDown': KeyDefinition.new({ 'keyCode': 174, 'code': 'AudioVolumeDown', 'key': 'AudioVolumeDown' }),
    'AudioVolumeUp': KeyDefinition.new({ 'keyCode': 175, 'code': 'AudioVolumeUp', 'key': 'AudioVolumeUp' }),
    'MediaTrackNext': KeyDefinition.new({ 'keyCode': 176, 'code': 'MediaTrackNext', 'key': 'MediaTrackNext' }),
    'MediaTrackPrevious': KeyDefinition.new({ 'keyCode': 177, 'code': 'MediaTrackPrevious', 'key': 'MediaTrackPrevious' }),
    'MediaStop': KeyDefinition.new({ 'keyCode': 178, 'code': 'MediaStop', 'key': 'MediaStop' }),
    'MediaPlayPause': KeyDefinition.new({ 'keyCode': 179, 'code': 'MediaPlayPause', 'key': 'MediaPlayPause' }),
    'Semicolon': KeyDefinition.new({ 'keyCode': 186, 'code': 'Semicolon', 'shiftKey': ':', 'key': ';' }),
    'Equal': KeyDefinition.new({ 'keyCode': 187, 'code': 'Equal', 'shiftKey': '+', 'key': '=' }),
    'NumpadEqual': KeyDefinition.new({ 'keyCode': 187, 'code': 'NumpadEqual', 'key': '=', 'location': 3 }),
    'Comma': KeyDefinition.new({ 'keyCode': 188, 'code': 'Comma', 'shiftKey': '\<', 'key': ',' }),
    'Minus': KeyDefinition.new({ 'keyCode': 189, 'code': 'Minus', 'shiftKey': '_', 'key': '-' }),
    'Period': KeyDefinition.new({ 'keyCode': 190, 'code': 'Period', 'shiftKey': '>', 'key': '.' }),
    'Slash': KeyDefinition.new({ 'keyCode': 191, 'code': 'Slash', 'shiftKey': '?', 'key': '/' }),
    'Backquote': KeyDefinition.new({ 'keyCode': 192, 'code': 'Backquote', 'shiftKey': '~', 'key': '`' }),
    'BracketLeft': KeyDefinition.new({ 'keyCode': 219, 'code': 'BracketLeft', 'shiftKey': '{', 'key': '[' }),
    'Backslash': KeyDefinition.new({ 'keyCode': 220, 'code': 'Backslash', 'shiftKey': '|', 'key': '\\' }),
    'BracketRight': KeyDefinition.new({ 'keyCode': 221, 'code': 'BracketRight', 'shiftKey': '}', 'key': ']' }),
    'Quote': KeyDefinition.new({ 'keyCode': 222, 'code': 'Quote', 'shiftKey': '"', 'key': '\'' }),
    'AltGraph': KeyDefinition.new({ 'keyCode': 225, 'code': 'AltGraph', 'key': 'AltGraph' }),
    'Props': KeyDefinition.new({ 'keyCode': 247, 'code': 'Props', 'key': 'CrSel' }),
    'Cancel': KeyDefinition.new({ 'keyCode': 3, 'key': 'Cancel', 'code': 'Abort' }),
    'Clear': KeyDefinition.new({ 'keyCode': 12, 'key': 'Clear', 'code': 'Numpad5', 'location': 3 }),
    'Shift': KeyDefinition.new({ 'keyCode': 16, 'key': 'Shift', 'code': 'ShiftLeft', 'location': 1 }),
    'Control': KeyDefinition.new({ 'keyCode': 17, 'key': 'Control', 'code': 'ControlLeft', 'location': 1 }),
    'Alt': KeyDefinition.new({ 'keyCode': 18, 'key': 'Alt', 'code': 'AltLeft', 'location': 1 }),
    'Accept': KeyDefinition.new({ 'keyCode': 30, 'key': 'Accept' }),
    'ModeChange': KeyDefinition.new({ 'keyCode': 31, 'key': 'ModeChange' }),
    ' ': KeyDefinition.new({ 'keyCode': 32, 'key': ' ', 'code': 'Space' }),
    'Print': KeyDefinition.new({ 'keyCode': 42, 'key': 'Print' }),
    'Execute': KeyDefinition.new({ 'keyCode': 43, 'key': 'Execute', 'code': 'Open' }),
    '\u0000': KeyDefinition.new({ 'keyCode': 46, 'key': '\u0000', 'code': 'NumpadDecimal', 'location': 3 }),
    'a': KeyDefinition.new({ 'keyCode': 65, 'key': 'a', 'code': 'KeyA' }),
    'b': KeyDefinition.new({ 'keyCode': 66, 'key': 'b', 'code': 'KeyB' }),
    'c': KeyDefinition.new({ 'keyCode': 67, 'key': 'c', 'code': 'KeyC' }),
    'd': KeyDefinition.new({ 'keyCode': 68, 'key': 'd', 'code': 'KeyD' }),
    'e': KeyDefinition.new({ 'keyCode': 69, 'key': 'e', 'code': 'KeyE' }),
    'f': KeyDefinition.new({ 'keyCode': 70, 'key': 'f', 'code': 'KeyF' }),
    'g': KeyDefinition.new({ 'keyCode': 71, 'key': 'g', 'code': 'KeyG' }),
    'h': KeyDefinition.new({ 'keyCode': 72, 'key': 'h', 'code': 'KeyH' }),
    'i': KeyDefinition.new({ 'keyCode': 73, 'key': 'i', 'code': 'KeyI' }),
    'j': KeyDefinition.new({ 'keyCode': 74, 'key': 'j', 'code': 'KeyJ' }),
    'k': KeyDefinition.new({ 'keyCode': 75, 'key': 'k', 'code': 'KeyK' }),
    'l': KeyDefinition.new({ 'keyCode': 76, 'key': 'l', 'code': 'KeyL' }),
    'm': KeyDefinition.new({ 'keyCode': 77, 'key': 'm', 'code': 'KeyM' }),
    'n': KeyDefinition.new({ 'keyCode': 78, 'key': 'n', 'code': 'KeyN' }),
    'o': KeyDefinition.new({ 'keyCode': 79, 'key': 'o', 'code': 'KeyO' }),
    'p': KeyDefinition.new({ 'keyCode': 80, 'key': 'p', 'code': 'KeyP' }),
    'q': KeyDefinition.new({ 'keyCode': 81, 'key': 'q', 'code': 'KeyQ' }),
    'r': KeyDefinition.new({ 'keyCode': 82, 'key': 'r', 'code': 'KeyR' }),
    's': KeyDefinition.new({ 'keyCode': 83, 'key': 's', 'code': 'KeyS' }),
    't': KeyDefinition.new({ 'keyCode': 84, 'key': 't', 'code': 'KeyT' }),
    'u': KeyDefinition.new({ 'keyCode': 85, 'key': 'u', 'code': 'KeyU' }),
    'v': KeyDefinition.new({ 'keyCode': 86, 'key': 'v', 'code': 'KeyV' }),
    'w': KeyDefinition.new({ 'keyCode': 87, 'key': 'w', 'code': 'KeyW' }),
    'x': KeyDefinition.new({ 'keyCode': 88, 'key': 'x', 'code': 'KeyX' }),
    'y': KeyDefinition.new({ 'keyCode': 89, 'key': 'y', 'code': 'KeyY' }),
    'z': KeyDefinition.new({ 'keyCode': 90, 'key': 'z', 'code': 'KeyZ' }),
    'Meta': KeyDefinition.new({ 'keyCode': 91, 'key': 'Meta', 'code': 'MetaLeft', 'location': 1 }),
    '*': KeyDefinition.new({ 'keyCode': 106, 'key': '*', 'code': 'NumpadMultiply', 'location': 3 }),
    '+': KeyDefinition.new({ 'keyCode': 107, 'key': '+', 'code': 'NumpadAdd', 'location': 3 }),
    '-': KeyDefinition.new({ 'keyCode': 109, 'key': '-', 'code': 'NumpadSubtract', 'location': 3 }),
    '/': KeyDefinition.new({ 'keyCode': 111, 'key': '/', 'code': 'NumpadDivide', 'location': 3 }),
    ';': KeyDefinition.new({ 'keyCode': 186, 'key': ';', 'code': 'Semicolon' }),
    '=': KeyDefinition.new({ 'keyCode': 187, 'key': '=', 'code': 'Equal' }),
    ',': KeyDefinition.new({ 'keyCode': 188, 'key': ',', 'code': 'Comma' }),
    '.': KeyDefinition.new({ 'keyCode': 190, 'key': '.', 'code': 'Period' }),
    '`': KeyDefinition.new({ 'keyCode': 192, 'key': '`', 'code': 'Backquote' }),
    '[': KeyDefinition.new({ 'keyCode': 219, 'key': '[', 'code': 'BracketLeft' }),
    '\\': KeyDefinition.new({ 'keyCode': 220, 'key': '\\', 'code': 'Backslash' }),
    ']': KeyDefinition.new({ 'keyCode': 221, 'key': ']', 'code': 'BracketRight' }),
    '\'': KeyDefinition.new({ 'keyCode': 222, 'key': '\'', 'code': 'Quote' }),
    'Attn': KeyDefinition.new({ 'keyCode': 246, 'key': 'Attn' }),
    'CrSel': KeyDefinition.new({ 'keyCode': 247, 'key': 'CrSel', 'code': 'Props' }),
    'ExSel': KeyDefinition.new({ 'keyCode': 248, 'key': 'ExSel' }),
    'EraseEof': KeyDefinition.new({ 'keyCode': 249, 'key': 'EraseEof' }),
    'Play': KeyDefinition.new({ 'keyCode': 250, 'key': 'Play' }),
    'ZoomOut': KeyDefinition.new({ 'keyCode': 251, 'key': 'ZoomOut' }),
    ')': KeyDefinition.new({ 'keyCode': 48, 'key': ')', 'code': 'Digit0' }),
    '!': KeyDefinition.new({ 'keyCode': 49, 'key': '!', 'code': 'Digit1' }),
    '@': KeyDefinition.new({ 'keyCode': 50, 'key': '@', 'code': 'Digit2' }),
    '#': KeyDefinition.new({ 'keyCode': 51, 'key': '#', 'code': 'Digit3' }),
    '$': KeyDefinition.new({ 'keyCode': 52, 'key': '$', 'code': 'Digit4' }),
    '%': KeyDefinition.new({ 'keyCode': 53, 'key': '%', 'code': 'Digit5' }),
    '^': KeyDefinition.new({ 'keyCode': 54, 'key': '^', 'code': 'Digit6' }),
    '&': KeyDefinition.new({ 'keyCode': 55, 'key': '&', 'code': 'Digit7' }),
    '(': KeyDefinition.new({ 'keyCode': 57, 'key': '\(', 'code': 'Digit9' }),
    'A': KeyDefinition.new({ 'keyCode': 65, 'key': 'A', 'code': 'KeyA' }),
    'B': KeyDefinition.new({ 'keyCode': 66, 'key': 'B', 'code': 'KeyB' }),
    'C': KeyDefinition.new({ 'keyCode': 67, 'key': 'C', 'code': 'KeyC' }),
    'D': KeyDefinition.new({ 'keyCode': 68, 'key': 'D', 'code': 'KeyD' }),
    'E': KeyDefinition.new({ 'keyCode': 69, 'key': 'E', 'code': 'KeyE' }),
    'F': KeyDefinition.new({ 'keyCode': 70, 'key': 'F', 'code': 'KeyF' }),
    'G': KeyDefinition.new({ 'keyCode': 71, 'key': 'G', 'code': 'KeyG' }),
    'H': KeyDefinition.new({ 'keyCode': 72, 'key': 'H', 'code': 'KeyH' }),
    'I': KeyDefinition.new({ 'keyCode': 73, 'key': 'I', 'code': 'KeyI' }),
    'J': KeyDefinition.new({ 'keyCode': 74, 'key': 'J', 'code': 'KeyJ' }),
    'K': KeyDefinition.new({ 'keyCode': 75, 'key': 'K', 'code': 'KeyK' }),
    'L': KeyDefinition.new({ 'keyCode': 76, 'key': 'L', 'code': 'KeyL' }),
    'M': KeyDefinition.new({ 'keyCode': 77, 'key': 'M', 'code': 'KeyM' }),
    'N': KeyDefinition.new({ 'keyCode': 78, 'key': 'N', 'code': 'KeyN' }),
    'O': KeyDefinition.new({ 'keyCode': 79, 'key': 'O', 'code': 'KeyO' }),
    'P': KeyDefinition.new({ 'keyCode': 80, 'key': 'P', 'code': 'KeyP' }),
    'Q': KeyDefinition.new({ 'keyCode': 81, 'key': 'Q', 'code': 'KeyQ' }),
    'R': KeyDefinition.new({ 'keyCode': 82, 'key': 'R', 'code': 'KeyR' }),
    'S': KeyDefinition.new({ 'keyCode': 83, 'key': 'S', 'code': 'KeyS' }),
    'T': KeyDefinition.new({ 'keyCode': 84, 'key': 'T', 'code': 'KeyT' }),
    'U': KeyDefinition.new({ 'keyCode': 85, 'key': 'U', 'code': 'KeyU' }),
    'V': KeyDefinition.new({ 'keyCode': 86, 'key': 'V', 'code': 'KeyV' }),
    'W': KeyDefinition.new({ 'keyCode': 87, 'key': 'W', 'code': 'KeyW' }),
    'X': KeyDefinition.new({ 'keyCode': 88, 'key': 'X', 'code': 'KeyX' }),
    'Y': KeyDefinition.new({ 'keyCode': 89, 'key': 'Y', 'code': 'KeyY' }),
    'Z': KeyDefinition.new({ 'keyCode': 90, 'key': 'Z', 'code': 'KeyZ' }),
    ':': KeyDefinition.new({ 'keyCode': 186, 'key': ':', 'code': 'Semicolon' }),
    '<': KeyDefinition.new({ 'keyCode': 188, 'key': '\<', 'code': 'Comma' }),
    '_': KeyDefinition.new({ 'keyCode': 189, 'key': '_', 'code': 'Minus' }),
    '>': KeyDefinition.new({ 'keyCode': 190, 'key': '>', 'code': 'Period' }),
    '?': KeyDefinition.new({ 'keyCode': 191, 'key': '?', 'code': 'Slash' }),
    '~': KeyDefinition.new({ 'keyCode': 192, 'key': '~', 'code': 'Backquote' }),
    '{': KeyDefinition.new({ 'keyCode': 219, 'key': '{', 'code': 'BracketLeft' }),
    '|': KeyDefinition.new({ 'keyCode': 220, 'key': '|', 'code': 'Backslash' }),
    '}': KeyDefinition.new({ 'keyCode': 221, 'key': '}', 'code': 'BracketRight' }),
    '"': KeyDefinition.new({ 'keyCode': 222, 'key': '"', 'code': 'Quote' }),
    'SoftLeft': KeyDefinition.new({ 'key': 'SoftLeft', 'code': 'SoftLeft', 'location': 4 }),
    'SoftRight': KeyDefinition.new({ 'key': 'SoftRight', 'code': 'SoftRight', 'location': 4 }),
    'Camera': KeyDefinition.new({ 'keyCode': 44, 'key': 'Camera', 'code': 'Camera', 'location': 4 }),
    'Call': KeyDefinition.new({ 'key': 'Call', 'code': 'Call', 'location': 4 }),
    'EndCall': KeyDefinition.new({ 'keyCode': 95, 'key': 'EndCall', 'code': 'EndCall', 'location': 4 }),
    'VolumeDown': KeyDefinition.new({ 'keyCode': 182, 'key': 'VolumeDown', 'code': 'VolumeDown', 'location': 4 }),
    'VolumeUp': KeyDefinition.new({ 'keyCode': 183, 'key': 'VolumeUp', 'code': 'VolumeUp', 'location': 4 }),
  }
end
