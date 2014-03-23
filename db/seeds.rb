case Rails.env
when 'development'
  Category.delete_all
  Operatingsystem.delete_all
  App.delete_all

	category_list = ['Audio Editors', 'Browsers', 'Cloud Drives', 'File managers', 'Internet radios']
	operatingsystem_list = ['Android', 'iOS', 'Windows Phone']
	app_list = [
							['Android Audio Editor', 'cherry.jpg', 'https://play.google.com/store/apps/details?id=roman10.audio.converter', 1, 1],
							['WavePad Free Audio Editor', 'wavepad.jpg', 'https://play.google.com/store/apps/details?id=com.nchsoftware.pocketwavepad_free', 1, 1], 
							['Beat Maker Audio Editor Free', 'beat.jpg', 'https://play.google.com/store/apps/details?id=com.BeatMakerAudioEditorFree', 1, 1],
							['Chrome', 'chrome.jpg', 'https://play.google.com/store/apps/details?id=com.android.chrome', 2, 1],
							['Opera', 'opera.jpg', 'https://play.google.com/store/apps/details?id=com.opera.browser', 2, 1],
							['Firefox', 'firefox.jpg', 'https://play.google.com/store/apps/details?id=org.mozilla.firefox', 2, 1],
							['Safari', 'safari.jpg', '#', 2, 2]
						]
	function_list = ['ringtone maker', 'audio conversion', 'audio extraction', 'audio recording']
	value_list = [
								[1, 1, nil, nil],
								[1, 2, nil, ".mp3, .mp4"],
								[1, 3, nil, ".mwa"],
								[1, 4, nil, ".flac"]
							]

	category_list.each do |category|
		Category.create! name: category
	end

	operatingsystem_list.each do |os|
		Operatingsystem.create! name: os
	end

	app_list.each do |name, thumbnail, link, category, operatingsystem|
		App.create! name: name, thumbnail: thumbnail, link: link, category_id: category, operatingsystem_id: operatingsystem
	end

	function_list.each do |function|
		Function.create! name: function
	end

	value_list.each do |app, function, number, string|
		Value.create! app_id: app, function_id: function, valuenumber: number, valuestring: string
	end

end