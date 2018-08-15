figures = \
		figures/edit_review_filters_screenshot.tex \
		figures/ores_architecture.tex \
		figures/ores_activity.tex \
		figures/ores_data_user.tex \
		figures/prediction_error_for_anons_and_newcomers.tex \
		figures/wikilabels_screenshot.tex \
		figures/ORES_precache_request_rate_201804.png \
		figures/ORES_report_mistakes_table.png \
		figures/ORES_request_activity_201804_week_vs_4hours.png \
		figures/anon_damaging_gb_vs_svc.pdf \
		figures/natural_damaging_gb_vs_svc.pdf \
		figures/newcomer_damaging_gb_vs_svc.pdf \
		figures/ORES_architecture.pdf \
		figures/ores_data_user_diagram.pdf

parts = \
		parts/abstract.tex \
		parts/authors.tex \
		parts/body.tex \
		parts/copyright.tex \
		parts/util.tex \
		parts/metadata.tex

sections = \
		sections/1_introduction.tex \
		sections/2_related_work.tex \
		sections/3_design_rationale.tex \
		sections/4_the_ores_system.tex \
		sections/5_innovations_in_openness.tex \
		sections/6_adoption_patterns.tex \
		sections/7_case_studies.tex \
		sections/8_conclusions_and_future_work.tex \
		sections/9_acknowledgements.tex \
		sections/appendix.tex


halfaker2018ores.pdf: halfaker2018ores.tex \
		$(figures) $(parts) $(sections) refs.bib acmart.cls
	rubber --pdf halfaker2018ores.tex

anon2018ores.pdf: anon2018ores.tex \
		$(figures) $(parts) $(sections) refs.bib acmart.cls
	rubber --pdf anon2018ores.tex

halfaker2018ores.with_font.pdf: halfaker2018ores.pdf
	ps2pdf13 -dPDFSETTINGS=/prepress halfaker2018ores.pdf halfaker2018ores.with_fonts.pdf

figures/anon_damaging_gb_vs_svc.pdf: figures/anon_damaging_gb_vs_svc.svg
	rsvg-convert -f pdf -o figures/anon_damaging_gb_vs_svc.pdf figures/anon_damaging_gb_vs_svc.svg

figures/natural_damaging_gb_vs_svc.pdf: figures/natural_damaging_gb_vs_svc.svg
	rsvg-convert -f pdf -o figures/natural_damaging_gb_vs_svc.pdf figures/natural_damaging_gb_vs_svc.svg

figures/newcomer_damaging_gb_vs_svc.pdf: figures/newcomer_damaging_gb_vs_svc.svg
	rsvg-convert -f pdf -o figures/newcomer_damaging_gb_vs_svc.pdf figures/newcomer_damaging_gb_vs_svc.svg

figures/ORES_architecture.pdf: figures/ORES_architecture.svg
	rsvg-convert -f pdf -o figures/ORES_architecture.pdf figures/ORES_architecture.svg

figures/ores_data_user_diagram.pdf: figures/ores_data_user_diagram.svg
	rsvg-convert -f pdf -o figures/ores_data_user_diagram.pdf figures/ores_data_user_diagram.svg
