INSERT INTO playlist_analysis.features (
                                           t_uri,
                                           acousticness,
                                           danceability,
                                           t_duration_ms,
                                           energy,
                                           instrumentalness,
                                           key,
                                           liveness,
                                           loudness,
                                           mode,
                                           speechiness,
                                           tempo,
                                           time_signature,
                                           valence
                                       )
                                       SELECT t.t_uri,
                                              f.acousticness,
                                              f.danceability,
                                              f.duration_ms,
                                              f.energy,
                                              f.instrumentalness,
                                              f.key,
                                              f.liveness,
                                              f.loudness,
                                              f.mode,
                                              f.speechiness,
                                              f.tempo,
                                              f.time_signature,
                                              f.valence
                                         FROM playlist_analysis.tracks t
                                              JOIN
                                              spotify.features f ON t.t_uri = f.uri
                                        WHERE t.t_uri IS NOT NULL;