if (ds_queue_size(messages) <= 0) {
	phase = 0;
	current_message = toEnqueue;
	animation_percent = 0;
}
ds_queue_enqueue(messages, toEnqueue);