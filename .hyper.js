module.exports = {
  config: {
    fontSize: 14,
    fontFamily: 'Source Code Pro',
    cursorColor: 'rgb(178, 184, 195)',
    cursorShape: 'BLOCK',
    foregroundColor: 'rgb(178, 184, 195)',
    backgroundColor: 'rgb(42, 48, 60)',
    borderColor: 'rgb(42, 48, 60)',
    borderColor: 'rgb(21, 23, 29)',
    termCSS: 'x-row {font-weight: 600}',
    showHamburgerMenu: true,
    padding: '0 5px',
    colors: {
      black: '#1b1b1b',
      red: '#bc5653',
      green: '#909d63',
      yellow: '#ebc17a',
      blue: '#7eaac7',
      magenta: '#b06698',
      cyan: '#8ddcd8',
      white: '#d9d9d9',
      lightBlack: '#636363',
      lightRed: '#bc5653',
      lightGreen: '#909d63',
      lightYellow: '#ebc17a',
      lightBlue: '#7eaac7',
      lightMagenta: '#b06698',
      lightCyan: '#8ddcd8',
      lightWhite: '#f7f7f7'
    },
    shell: '/usr/local/bin/fish',

    shellArgs: ['--login'],

    // for environment variables
    env: {
      EDITOR: 'subl -w'
    },

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: true

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',
  },
  plugins: [
    // 'hyperline',
    // 'hyper-blink',
    // 'hyper-solarized-dark',
    // 'hyperlinks',
    // 'hyper-tab-icons'
  ],
  localPlugins: []
}
