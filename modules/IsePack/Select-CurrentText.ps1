function Select-CurrentText {
    <#
    .Synopsis
        Returns the currently selected text
    .Description
        Returns the text that is currently selected from within the editor, 
        the output, and the command pane
    .Example
        Select-CurrentText
    #>
    param(
    # If set, ignores selected text in the current file
    [Switch]$NotInEditor,
    # If set, ignores selected text in the output
    [Switch]$NotInOutput,
    # If set, ignosres selected text in the command pane
    [Switch]$NotInCommandPane
    )
    if (-not $NotInEditor) { $psise.CurrentFile.Editor.SelectedText }
    if (-not $NotInOutput) { $psise.CurrentPowerShellTab.Output.SelectedText }
    if (-not $NotInCommandPane) { 
        $psise.CurrentPowerShellTab.CommandPane.SelectedText
    }
}