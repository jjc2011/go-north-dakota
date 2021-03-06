/// @description Handle text and Dakota movement

time_pass += 1;
if (time_pass > start_moving) {
	dakota_instance.key_right = 1;
}

current_letter += 0.5;
shown_text = string_copy(whole_text, 1, current_letter);

if (current_letter > string_length(shown_text) + line_pause_time) {
	if (next_line >= array_length_1d(dialogue)-1) {
		dakota_instance.x_spd = 5;
	} else {
		current_letter = 0;
		next_line++;
	}
}

whole_text = dialogue[next_line];