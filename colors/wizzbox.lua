-- Magento CE admin-inspired light colorscheme
-- Extracted from Magento 1.9.2.4 admin panel UI

vim.cmd 'hi clear'
if vim.fn.exists 'syntax_on' == 1 then vim.cmd 'syntax reset' end
vim.g.colors_name = 'wizzbox'
vim.o.background = 'light'

local p = {
  -- Extracted from Magento CE admin
  bg        = '#F2EBDE',  -- main content background
  bg_alt    = '#E0DACF',  -- footer / secondary panels
  bg_light  = '#F5F2ED',  -- alternating table row 2
  bg_white  = '#F6F6F6',  -- alternating table row 1
  bg_note   = '#FFF9E9',  -- index management info bar
  bg_dark   = '#31302B',  -- top nav bar
  header    = '#666158',  -- table header bg
  pager     = '#E0DACE',  -- pagination header
  orange    = '#FF5000',  -- primary accent
  orange_dk = '#CC4000',  -- darker orange, better on light bg

  fg        = '#31302B',  -- primary text (same as top bar)
  fg_mid    = '#666158',  -- mid tone (table header color)
  fg_muted  = '#9B9288',  -- subtle text, comments
  border    = '#C8C0B0',  -- derived border tone

  -- Syntax palette (warm, readable on beige)
  keyword   = '#B83A00',  -- darker warm red-orange for keywords
  string    = '#4A7C59',  -- forest green
  number    = '#9A5C00',  -- amber-brown
  func      = '#375FA5',  -- steel blue (contrast on warm bg)
  type_c    = '#7E5CA7',  -- muted purple
  operator  = '#8A6500',  -- dark gold
  special   = '#C04800',  -- mid orange-red
  error     = '#CC1111',
  warn      = '#B06500',
  info      = '#375FA5',
  hint      = '#4A7C59',

  -- Diff / git
  add       = '#4A7C59',
  change    = '#B06500',
  del       = '#CC1111',

  -- UI derived
  cursor_ln = '#EBE4D4',
  visual    = '#DDD5C3',
  pmenu_bg  = '#EDE6D8',
  pmenu_sel = '#D8CFBE',
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Editor ────────────────────────────────────────────────────────────────
hi('Normal',         { fg = p.fg,       bg = p.bg })
hi('NormalNC',       { fg = p.fg,       bg = p.bg })
hi('NormalFloat',    { fg = p.fg,       bg = p.bg_alt })
hi('FloatBorder',    { fg = p.border,   bg = p.bg_alt })
hi('FloatTitle',     { fg = p.orange_dk, bg = p.bg_alt, bold = true })
hi('Cursor',         { fg = p.bg,       bg = p.fg })
hi('CursorLine',     { bg = p.cursor_ln })
hi('CursorColumn',   { bg = p.cursor_ln })
hi('CursorLineNr',   { fg = p.orange_dk, bold = true })
hi('LineNr',         { fg = p.fg_muted })
hi('SignColumn',     { fg = p.fg_muted, bg = p.bg })
hi('ColorColumn',    { bg = p.bg_alt })
hi('Visual',         { bg = p.visual })
hi('VisualNOS',      { bg = p.visual })
hi('Search',         { fg = p.bg_dark,  bg = '#FFB347' })
hi('IncSearch',      { fg = p.bg,       bg = p.orange })
hi('CurSearch',      { fg = p.bg,       bg = p.orange })
hi('Substitute',     { fg = p.bg,       bg = p.orange_dk })
hi('MatchParen',     { fg = p.orange,   bold = true, underline = true })
hi('NonText',        { fg = p.border })
hi('SpecialKey',     { fg = p.border })
hi('Whitespace',     { fg = p.border })
hi('EndOfBuffer',    { fg = p.bg })
hi('Folded',         { fg = p.fg_mid,   bg = p.bg_alt })
hi('FoldColumn',     { fg = p.fg_muted, bg = p.bg })
hi('Conceal',        { fg = p.fg_muted })

-- ── Statusline / Tabline ──────────────────────────────────────────────────
hi('StatusLine',     { fg = p.bg_alt,   bg = p.bg_dark })
hi('StatusLineNC',   { fg = p.fg_mid,   bg = p.bg_alt })
hi('TabLine',        { fg = p.fg_mid,   bg = p.bg_alt })
hi('TabLineSel',     { fg = p.fg,       bg = p.bg, bold = true })
hi('TabLineFill',    { bg = p.bg_alt })
hi('WinBar',         { fg = p.fg,       bg = p.bg })
hi('WinBarNC',       { fg = p.fg_mid,   bg = p.bg_alt })

-- ── Splits / borders ─────────────────────────────────────────────────────
hi('VertSplit',      { fg = p.border,   bg = p.bg })
hi('WinSeparator',   { fg = p.border,   bg = p.bg })

-- ── Popup menu ────────────────────────────────────────────────────────────
hi('Pmenu',          { fg = p.fg,       bg = p.pmenu_bg })
hi('PmenuSel',       { fg = p.fg,       bg = p.pmenu_sel, bold = true })
hi('PmenuSbar',      { bg = p.bg_alt })
hi('PmenuThumb',     { bg = p.fg_muted })
hi('PmenuKind',      { fg = p.fg_mid,   bg = p.pmenu_bg })
hi('PmenuKindSel',   { fg = p.fg_mid,   bg = p.pmenu_sel })
hi('PmenuExtra',     { fg = p.fg_muted, bg = p.pmenu_bg })
hi('PmenuExtraSel',  { fg = p.fg_muted, bg = p.pmenu_sel })

-- ── Messages ──────────────────────────────────────────────────────────────
hi('ErrorMsg',       { fg = p.error,    bold = true })
hi('WarningMsg',     { fg = p.warn })
hi('ModeMsg',        { fg = p.fg,       bold = true })
hi('MoreMsg',        { fg = p.info })
hi('Question',       { fg = p.info })
hi('Title',          { fg = p.orange_dk, bold = true })
hi('WildMenu',       { fg = p.fg,       bg = p.pmenu_sel })
hi('Directory',      { fg = p.func })

-- ── Syntax ────────────────────────────────────────────────────────────────
hi('Comment',        { fg = p.fg_muted, italic = true })
hi('String',         { fg = p.string })
hi('Character',      { fg = p.string })
hi('Number',         { fg = p.number })
hi('Float',          { fg = p.number })
hi('Boolean',        { fg = p.keyword })
hi('Constant',       { fg = p.number })
hi('Identifier',     { fg = p.fg })
hi('Function',       { fg = p.func })
hi('Statement',      { fg = p.keyword,  bold = true })
hi('Keyword',        { fg = p.keyword,  bold = true })
hi('Conditional',    { fg = p.keyword,  bold = true })
hi('Repeat',         { fg = p.keyword,  bold = true })
hi('Label',          { fg = p.keyword })
hi('Operator',       { fg = p.operator })
hi('Exception',      { fg = p.error })
hi('PreProc',        { fg = p.special })
hi('Include',        { fg = p.special })
hi('Define',         { fg = p.special })
hi('Macro',          { fg = p.special })
hi('PreCondit',      { fg = p.special })
hi('Type',           { fg = p.type_c })
hi('StorageClass',   { fg = p.type_c })
hi('Structure',      { fg = p.type_c })
hi('Typedef',        { fg = p.type_c })
hi('Special',        { fg = p.special })
hi('SpecialChar',    { fg = p.special })
hi('Tag',            { fg = p.orange_dk })
hi('Delimiter',      { fg = p.fg_mid })
hi('SpecialComment', { fg = p.fg_muted,  bold = true })
hi('Debug',          { fg = p.error })
hi('Underlined',     { underline = true })
hi('Ignore',         { fg = p.fg_muted })
hi('Error',          { fg = p.error,    bold = true })
hi('Todo',           { fg = p.bg_dark,  bg = p.bg_note, bold = true })

-- ── Treesitter ────────────────────────────────────────────────────────────
hi('@comment',                   { link = 'Comment' })
hi('@comment.documentation',     { fg = p.fg_mid, italic = true })
hi('@keyword',                   { link = 'Keyword' })
hi('@keyword.function',          { fg = p.keyword, bold = true })
hi('@keyword.operator',          { fg = p.operator })
hi('@keyword.return',            { fg = p.keyword, bold = true })
hi('@keyword.import',            { fg = p.special })
hi('@function',                  { link = 'Function' })
hi('@function.builtin',          { fg = p.special })
hi('@function.call',             { fg = p.func })
hi('@function.method',           { fg = p.func })
hi('@function.method.call',      { fg = p.func })
hi('@variable',                  { fg = p.fg })
hi('@variable.builtin',          { fg = p.special })
hi('@variable.parameter',        { fg = p.fg })
hi('@variable.member',           { fg = p.fg })
hi('@property',                  { fg = p.fg })
hi('@string',                    { link = 'String' })
hi('@string.escape',             { fg = p.special })
hi('@string.special',            { fg = p.special })
hi('@string.regexp',             { fg = p.orange_dk })
hi('@number',                    { link = 'Number' })
hi('@number.float',              { link = 'Float' })
hi('@boolean',                   { link = 'Boolean' })
hi('@constant',                  { link = 'Constant' })
hi('@constant.builtin',          { fg = p.number })
hi('@constant.macro',            { fg = p.special })
hi('@type',                      { link = 'Type' })
hi('@type.builtin',              { fg = p.type_c })
hi('@type.definition',           { fg = p.type_c, bold = true })
hi('@constructor',               { fg = p.type_c })
hi('@operator',                  { link = 'Operator' })
hi('@punctuation.bracket',       { fg = p.fg_mid })
hi('@punctuation.delimiter',     { fg = p.fg_mid })
hi('@punctuation.special',       { fg = p.special })
hi('@tag',                       { fg = p.orange_dk })
hi('@tag.builtin',               { fg = p.orange_dk })
hi('@tag.attribute',             { fg = p.func })
hi('@tag.delimiter',             { fg = p.fg_mid })
hi('@namespace',                 { fg = p.type_c })
hi('@module',                    { fg = p.type_c })
hi('@label',                     { fg = p.keyword })
hi('@attribute',                 { fg = p.special })
hi('@diff.plus',                 { fg = p.add })
hi('@diff.minus',                { fg = p.del })
hi('@diff.delta',                { fg = p.change })
hi('@markup.heading',            { fg = p.orange_dk, bold = true })
hi('@markup.raw',                { fg = p.string,   bg = p.bg_light })
hi('@markup.link',               { fg = p.func, underline = true })
hi('@markup.link.url',           { fg = p.func, underline = true })
hi('@markup.list',               { fg = p.orange_dk })
hi('@markup.strong',             { bold = true })
hi('@markup.italic',             { italic = true })
hi('@markup.strikethrough',      { strikethrough = true })

-- ── LSP semantic tokens ────────────────────────────────────────────────────
hi('@lsp.type.class',            { link = 'Type' })
hi('@lsp.type.interface',        { link = 'Type' })
hi('@lsp.type.enum',             { link = 'Type' })
hi('@lsp.type.enumMember',       { fg = p.number })
hi('@lsp.type.function',         { link = 'Function' })
hi('@lsp.type.method',           { link = 'Function' })
hi('@lsp.type.parameter',        { fg = p.fg })
hi('@lsp.type.variable',         { fg = p.fg })
hi('@lsp.type.property',         { fg = p.fg })
hi('@lsp.type.keyword',          { link = 'Keyword' })
hi('@lsp.type.namespace',        { link = '@namespace' })
hi('@lsp.type.modifier',         { link = 'Keyword' })
hi('@lsp.mod.deprecated',        { strikethrough = true })
hi('@lsp.mod.readonly',          { fg = p.number })

-- ── Diagnostics ───────────────────────────────────────────────────────────
hi('DiagnosticError',              { fg = p.error })
hi('DiagnosticWarn',               { fg = p.warn })
hi('DiagnosticInfo',               { fg = p.info })
hi('DiagnosticHint',               { fg = p.hint })
hi('DiagnosticOk',                 { fg = p.add })
hi('DiagnosticUnderlineError',     { undercurl = true, sp = p.error })
hi('DiagnosticUnderlineWarn',      { undercurl = true, sp = p.warn })
hi('DiagnosticUnderlineInfo',      { undercurl = true, sp = p.info })
hi('DiagnosticUnderlineHint',      { undercurl = true, sp = p.hint })
hi('DiagnosticVirtualTextError',   { fg = p.error, bg = '#FCE8E8' })
hi('DiagnosticVirtualTextWarn',    { fg = p.warn,  bg = '#FEF3E2' })
hi('DiagnosticVirtualTextInfo',    { fg = p.info,  bg = '#E8F0FE' })
hi('DiagnosticVirtualTextHint',    { fg = p.hint,  bg = '#E8F5EE' })
hi('DiagnosticSignError',          { fg = p.error, bg = p.bg })
hi('DiagnosticSignWarn',           { fg = p.warn,  bg = p.bg })
hi('DiagnosticSignInfo',           { fg = p.info,  bg = p.bg })
hi('DiagnosticSignHint',           { fg = p.hint,  bg = p.bg })
hi('LspReferenceText',             { bg = p.visual })
hi('LspReferenceRead',             { bg = p.visual })
hi('LspReferenceWrite',            { bg = p.visual, underline = true })
hi('LspInlayHint',                 { fg = p.fg_muted, bg = p.bg_light })
hi('LspCodeLens',                  { fg = p.fg_muted })

-- ── Gitsigns ──────────────────────────────────────────────────────────────
hi('GitSignsAdd',              { fg = p.add,    bg = p.bg })
hi('GitSignsChange',           { fg = p.change, bg = p.bg })
hi('GitSignsDelete',           { fg = p.del,    bg = p.bg })
hi('GitSignsAddNr',            { fg = p.add })
hi('GitSignsChangeNr',         { fg = p.change })
hi('GitSignsDeleteNr',         { fg = p.del })
hi('GitSignsAddLn',            { bg = '#EBF5EE' })
hi('GitSignsChangeLn',         { bg = '#FEF5E4' })

-- ── Diff ──────────────────────────────────────────────────────────────────
hi('DiffAdd',                  { fg = p.add,    bg = '#EBF5EE' })
hi('DiffChange',               { fg = p.change, bg = '#FEF5E4' })
hi('DiffDelete',               { fg = p.del,    bg = '#FCE8E8' })
hi('DiffText',                 { fg = p.change, bg = '#FDE8C0', bold = true })
hi('Added',                    { fg = p.add })
hi('Changed',                  { fg = p.change })
hi('Removed',                  { fg = p.del })

-- ── Telescope ─────────────────────────────────────────────────────────────
hi('TelescopeNormal',          { fg = p.fg,       bg = p.bg_alt })
hi('TelescopeBorder',          { fg = p.border,   bg = p.bg_alt })
hi('TelescopeTitle',           { fg = p.orange_dk, bold = true })
hi('TelescopePromptNormal',    { fg = p.fg,       bg = p.bg })
hi('TelescopePromptBorder',    { fg = p.border,   bg = p.bg })
hi('TelescopePromptTitle',     { fg = p.orange_dk, bg = p.bg, bold = true })
hi('TelescopePromptPrefix',    { fg = p.orange })
hi('TelescopePreviewNormal',   { fg = p.fg,       bg = p.bg })
hi('TelescopePreviewBorder',   { fg = p.border,   bg = p.bg })
hi('TelescopeResultsNormal',   { fg = p.fg,       bg = p.bg_alt })
hi('TelescopeResultsBorder',   { fg = p.border,   bg = p.bg_alt })
hi('TelescopeSelection',       { bg = p.pmenu_sel, bold = true })
hi('TelescopeSelectionCaret',  { fg = p.orange })
hi('TelescopeMatching',        { fg = p.orange_dk, bold = true })
hi('TelescopeMultiSelection',  { bg = p.visual })

-- ── NeoTree ───────────────────────────────────────────────────────────────
hi('NeoTreeNormal',            { fg = p.fg,       bg = p.bg_alt })
hi('NeoTreeNormalNC',          { fg = p.fg,       bg = p.bg_alt })
hi('NeoTreeWinSeparator',      { fg = p.border,   bg = p.bg_alt })
hi('NeoTreeDirectoryName',     { fg = p.func,     bold = true })
hi('NeoTreeDirectoryIcon',     { fg = p.func })
hi('NeoTreeRootName',          { fg = p.orange_dk, bold = true })
hi('NeoTreeFileName',          { fg = p.fg })
hi('NeoTreeFileIcon',          { fg = p.fg_mid })
hi('NeoTreeIndentMarker',      { fg = p.border })
hi('NeoTreeExpander',          { fg = p.fg_mid })
hi('NeoTreeGitModified',       { fg = p.change })
hi('NeoTreeGitAdded',          { fg = p.add })
hi('NeoTreeGitDeleted',        { fg = p.del })
hi('NeoTreeGitConflict',       { fg = p.error })
hi('NeoTreeGitUntracked',      { fg = p.fg_muted })

-- ── Which-key ─────────────────────────────────────────────────────────────
hi('WhichKey',           { fg = p.orange_dk, bold = true })
hi('WhichKeyDesc',       { fg = p.fg })
hi('WhichKeyGroup',      { fg = p.func, bold = true })
hi('WhichKeySeparator',  { fg = p.fg_muted })
hi('WhichKeyFloat',      { bg = p.bg_alt })
hi('WhichKeyBorder',     { fg = p.border, bg = p.bg_alt })
hi('WhichKeyValue',      { fg = p.fg_muted })

-- ── Blink CMP ─────────────────────────────────────────────────────────────
hi('BlinkCmpDoc',              { fg = p.fg,      bg = p.bg_alt })
hi('BlinkCmpDocBorder',        { fg = p.border,  bg = p.bg_alt })
hi('BlinkCmpDocCursorLine',    { bg = p.pmenu_sel })
hi('BlinkCmpMenu',             { fg = p.fg,      bg = p.pmenu_bg })
hi('BlinkCmpMenuBorder',       { fg = p.border,  bg = p.pmenu_bg })
hi('BlinkCmpMenuSelection',    { bg = p.pmenu_sel, bold = true })
hi('BlinkCmpScrollBarThumb',   { bg = p.fg_muted })
hi('BlinkCmpScrollBarGutter',  { bg = p.bg_alt })
hi('BlinkCmpLabel',            { fg = p.fg })
hi('BlinkCmpLabelDeprecated',  { fg = p.fg_muted, strikethrough = true })
hi('BlinkCmpLabelMatch',       { fg = p.orange_dk, bold = true })
hi('BlinkCmpKind',             { fg = p.fg_mid })
hi('BlinkCmpKindFunction',     { fg = p.func })
hi('BlinkCmpKindMethod',       { fg = p.func })
hi('BlinkCmpKindConstructor',  { fg = p.type_c })
hi('BlinkCmpKindClass',        { fg = p.type_c })
hi('BlinkCmpKindInterface',    { fg = p.type_c })
hi('BlinkCmpKindEnum',         { fg = p.type_c })
hi('BlinkCmpKindEnumMember',   { fg = p.number })
hi('BlinkCmpKindKeyword',      { fg = p.keyword })
hi('BlinkCmpKindVariable',     { fg = p.fg })
hi('BlinkCmpKindField',        { fg = p.fg })
hi('BlinkCmpKindProperty',     { fg = p.fg })
hi('BlinkCmpKindString',       { fg = p.string })
hi('BlinkCmpKindValue',        { fg = p.number })
hi('BlinkCmpKindSnippet',      { fg = p.special })
hi('BlinkCmpKindFile',         { fg = p.func })
hi('BlinkCmpKindFolder',       { fg = p.func })
hi('BlinkCmpKindModule',       { fg = p.type_c })
hi('BlinkCmpKindOperator',     { fg = p.operator })
hi('BlinkCmpKindReference',    { fg = p.fg_mid })
hi('BlinkCmpKindUnit',         { fg = p.number })
hi('BlinkCmpKindText',         { fg = p.fg_muted })
hi('BlinkCmpKindColor',        { fg = p.orange })
hi('BlinkCmpKindEvent',        { fg = p.special })
hi('BlinkCmpKindStruct',       { fg = p.type_c })
hi('BlinkCmpKindTypeParameter',{ fg = p.type_c })

-- ── Indent line ───────────────────────────────────────────────────────────
hi('IblIndent',          { fg = p.border })
hi('IblScope',           { fg = p.fg_mid })
hi('IndentBlanklineChar',{ fg = p.border })

-- ── Flash.nvim ────────────────────────────────────────────────────────────
hi('FlashBackdrop',      { fg = p.fg_muted })
hi('FlashLabel',         { fg = p.bg, bg = p.orange, bold = true })
hi('FlashMatch',         { fg = p.bg_dark, bg = '#FFB347' })
hi('FlashCurrent',       { fg = p.bg, bg = p.orange_dk, bold = true })

-- ── Todo comments ─────────────────────────────────────────────────────────
hi('TodoBgTODO',   { fg = p.bg,     bg = p.info,   bold = true })
hi('TodoBgNOTE',   { fg = p.bg,     bg = p.hint,   bold = true })
hi('TodoBgFIX',    { fg = p.bg,     bg = p.error,  bold = true })
hi('TodoBgWARN',   { fg = p.bg,     bg = p.warn,   bold = true })
hi('TodoBgHACK',   { fg = p.bg,     bg = p.change, bold = true })
hi('TodoFgTODO',   { fg = p.info })
hi('TodoFgNOTE',   { fg = p.hint })
hi('TodoFgFIX',    { fg = p.error })
hi('TodoFgWARN',   { fg = p.warn })
hi('TodoFgHACK',   { fg = p.change })
hi('TodoSignTODO', { fg = p.info })
hi('TodoSignNOTE', { fg = p.hint })
hi('TodoSignFIX',  { fg = p.error })
hi('TodoSignWARN', { fg = p.warn })

-- ── Fidget ────────────────────────────────────────────────────────────────
hi('FidgetTask',   { fg = p.fg_muted })
hi('FidgetTitle',  { fg = p.orange_dk })

-- ── Dashboard ─────────────────────────────────────────────────────────────
hi('DashboardHeader', { fg = p.orange })
hi('DashboardFooter', { fg = p.fg_muted })
hi('DashboardKey',    { fg = p.orange_dk, bold = true })
hi('DashboardDesc',   { fg = p.fg_mid })
hi('DashboardIcon',   { fg = p.orange_dk })

-- ── Terminal colors ───────────────────────────────────────────────────────
vim.g.terminal_color_0  = p.bg_dark
vim.g.terminal_color_1  = p.error
vim.g.terminal_color_2  = p.add
vim.g.terminal_color_3  = p.warn
vim.g.terminal_color_4  = p.info
vim.g.terminal_color_5  = p.type_c
vim.g.terminal_color_6  = p.hint
vim.g.terminal_color_7  = p.bg_light
vim.g.terminal_color_8  = p.fg_mid
vim.g.terminal_color_9  = '#FF4444'
vim.g.terminal_color_10 = '#6AAB7A'
vim.g.terminal_color_11 = '#E09020'
vim.g.terminal_color_12 = '#5580CC'
vim.g.terminal_color_13 = '#9E7CC7'
vim.g.terminal_color_14 = '#5AAA85'
vim.g.terminal_color_15 = p.fg
