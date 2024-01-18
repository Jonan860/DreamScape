dialogue_number = 0
dialogue_string1 = "... Lille-skutt?"
dialogue_speaker1 = global.ida_dialogue
dialogue_audience1 = ds_list_create()
ds_list_add(dialogue_audience1, global.lille_skutt_dialogue)

dialogue_speaker2 = global.lille_skutt_dialogue
dialogue_string2 = "Hjälp! Nils har blivit uppäten av en jätteödla! och armé med ghoulisar är på väg hit från norr"
dialogue_audience2 = ds_list_create()
ds_list_add(dialogue_audience2, global.ida_dialogue)

dialogue_speaker3 = global.ida_dialogue
dialogue_string3 = "... Nils? ... Vad gör han här? Vad är det här för ställe?"
dialogue_audience3 = ds_list_create()
ds_list_add(dialogue_audience3, global.lille_skutt_dialogue)

dialogue_speaker4 = global.lille_skutt_dialogue
dialogue_string4 = "Du måste sätta igång produktionen av soldater från barracken!"
dialogue_audience4 = ds_list_create()
ds_list_add(dialogue_audience4, global.ida_dialogue)
 
dialogue_speaker5 = global.ida_dialogue
dialogue_string5 = "En dröm! Ja det är en dröm!"
dialogue_audience5 = ds_list_create()
ds_list_add(dialogue_audience5, global.lille_skutt_dialogue)
 
list_of_dialogue_strings = ds_list_create()
list_of_dialogue_speaker = ds_list_create()
list_of_list_of_audience = ds_list_create()
ds_list_add(list_of_dialogue_strings, dialogue_string1, dialogue_string2, dialogue_string3, dialogue_string4, dialogue_string5)
ds_list_add(list_of_dialogue_speaker, dialogue_speaker1, dialogue_speaker2, dialogue_speaker3, dialogue_speaker4, dialogue_speaker5)
ds_list_add(list_of_list_of_audience, dialogue_audience1, dialogue_audience2, dialogue_audience3, dialogue_audience4, dialogue_audience5)

list_of_dialogue_numbers_where_dialogue_change_to_battle_phase = ds_list_create()
ds_list_add(list_of_dialogue_numbers_where_dialogue_change_to_battle_phase, 4)