notename = ["A", "C","B", "D", "E", "F", "F#", "G", "G#"];

song = ["F#", "F#","A", "A", "E", "E", "F#", "F#","D","D", "E", "E", "B", "B", "A", "A", "G#", "G#"];
for k1 = 1:length(song)
    idx = strcmp(song(k1), notename);
    songidx(k1) = find(idx);
end
dur = 0.3*8192;
songnote = [ ];
for k1 = 1:length(songidx)
songnote = [songnote; [notecreate(songidx(k1),dur) zeros(1,75)]'];
end
soundsc(songnote, 8192)