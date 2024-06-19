import 'package:flutter/material.dart';
class ProductDetail extends StatelessWidget {
	const ProductDetail({super.key});
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: Container(
									color: Color(0xFFFFFFFF),
									padding: EdgeInsets.only( bottom: 37),
									width: double.infinity,
									height: double.infinity,
									child: SingleChildScrollView(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														margin: EdgeInsets.only( bottom: 108),
														width: double.infinity,
														child: Stack(
															clipBehavior: Clip.none,
															children: [
																Column(
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: [
																		IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					border: Border.all(
																						color: Color(0xFF5E27FD),
																						width: 1,
																					),
																					color: Color(0xFFECECEC),
																				),
																				padding: EdgeInsets.only( top: 23, bottom: 66, left: 18, right: 18),
																				width: double.infinity,
																				child: Column(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						IntrinsicHeight(
																							child: Container(
																								margin: EdgeInsets.only( bottom: 29),
																								width: double.infinity,
																								child: Row(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										IntrinsicHeight(
																											child: Container(
																												margin: EdgeInsets.only( top: 12, right: 25),
																												width: 40,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																margin: EdgeInsets.only( bottom: 26),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			width: 12,
																																			height: 24,
																																			child: Image.network(
																																				'https://i.imgur.com/1tMFzp8.png',
																																				fit: BoxFit.fill,
																																			)
																																		),
																																		Expanded(
																																			child: Container(
																																				height: 1,
																																				width: double.infinity,
																																				child: Image.network(
																																					'https://i.imgur.com/1tMFzp8.png',
																																					fit: BoxFit.fill,
																																				)
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														Expanded(
																															child: Container(
																																height: 35,
																																width: double.infinity,
																																child: Image.network(
																																	'https://i.imgur.com/1tMFzp8.png',
																																	fit: BoxFit.fill,
																																)
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												margin: EdgeInsets.only( top: 8, right: 38),
																												width: 63,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Expanded(
																															child: Container(
																																margin: EdgeInsets.only( bottom: 35),
																																height: 63,
																																width: double.infinity,
																																child: Image.network(
																																	'https://i.imgur.com/1tMFzp8.png',
																																	fit: BoxFit.fill,
																																)
																															),
																														),
																														Container(
																															margin: EdgeInsets.symmetric(horizontal: 5),
																															width: 40,
																															height: 40,
																															child: Image.network(
																																'https://i.imgur.com/1tMFzp8.png',
																																fit: BoxFit.fill,
																															)
																														),
																													]
																												),
																											),
																										),
																										Expanded(
																											child: IntrinsicHeight(
																												child: Container(
																													margin: EdgeInsets.only( top: 8, right: 4),
																													width: double.infinity,
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Expanded(
																																child: Container(
																																	margin: EdgeInsets.only( bottom: 46),
																																	height: 32,
																																	width: double.infinity,
																																	child: Image.network(
																																		'https://i.imgur.com/1tMFzp8.png',
																																		fit: BoxFit.fill,
																																	)
																																),
																															),
																															Container(
																																width: 20,
																																height: 20,
																																child: Image.network(
																																	'https://i.imgur.com/1tMFzp8.png',
																																	fit: BoxFit.fill,
																																)
																															),
																														]
																													),
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												margin: EdgeInsets.only( right: 4),
																												width: 66,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: EdgeInsets.only( bottom: 30),
																															width: 34,
																															height: 34,
																															child: Image.network(
																																'https://i.imgur.com/1tMFzp8.png',
																																fit: BoxFit.fill,
																															)
																														),
																														Container(
																															width: 54,
																															height: 54,
																															child: Image.network(
																																'https://i.imgur.com/1tMFzp8.png',
																																fit: BoxFit.fill,
																															)
																														),
																													]
																												),
																											),
																										),
																										Container(
																											margin: EdgeInsets.only( top: 13),
																											width: 23,
																											height: 21,
																											child: Image.network(
																												'https://i.imgur.com/1tMFzp8.png',
																												fit: BoxFit.fill,
																											)
																										),
																									]
																								),
																							),
																						),
																						Container(
																							width: 32,
																							height: 32,
																							child: Image.network(
																								'https://i.imgur.com/1tMFzp8.png',
																								fit: BoxFit.fill,
																							)
																						),
																					]
																				),
																			),
																		),
																	]
																),
																Positioned(
																	bottom: 0,
																	left: 69,
																	width: 289,
																	height: 234,
																	child: Container(
																		transform: Matrix4.translationValues(0, 87, 0),
																		width: 289,
																		height: 234,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																				fit: BoxFit.cover
																			),
																		),
																		child: SizedBox(),
																	),
																),
																Positioned(
																	bottom: 53,
																	right: 0,
																	width: 75,
																	height: 75,
																	child: Container(
																		transform: Matrix4.translationValues(3, 0, 0),
																		width: 75,
																		height: 75,
																		child: Image.network(
																			'https://i.imgur.com/1tMFzp8.png',
																			fit: BoxFit.fill,
																		)
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: EdgeInsets.only( bottom: 24, left: 28, right: 28),
														width: double.infinity,
														child: Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															children: [
																Text(
																	'Beef Burger',
																	style: TextStyle(
																		color: Color(0xFF000000),
																		fontSize: 32,
																		fontWeight: FontWeight.bold,
																	),
																),
																Text(
																	'IDR 20K',
																	style: TextStyle(
																		color: Color(0xFF000000),
																		fontSize: 18,
																		fontWeight: FontWeight.bold,
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: EdgeInsets.only( bottom: 14, left: 25, right: 25),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	padding: EdgeInsets.only( left: 5, right: 5),
																	margin: EdgeInsets.only( right: 18),
																	width: 18,
																	height: 22,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 4),
																					height: 8,
																					width: double.infinity,
																					child: Image.network(
																						'https://i.imgur.com/1tMFzp8.png',
																						fit: BoxFit.fill,
																					)
																				),
																			),
																		]
																	),
																),
																Expanded(
																	child: Container(
																		width: double.infinity,
																		child: Text(
																			'Mcdi',
																			style: TextStyle(
																				color: Color(0xFF6d6c6c),
																				fontSize: 18,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: EdgeInsets.only( bottom: 32, left: 24, right: 24),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	margin: EdgeInsets.only( right: 15),
																	width: 24,
																	height: 24,
																	child: Image.network(
																		'https://i.imgur.com/1tMFzp8.png',
																		fit: BoxFit.fill,
																	)
																),
																Expanded(
																	child: Container(
																		width: double.infinity,
																		child: Text(
																			'4,7',
																			style: TextStyle(
																				color: Color(0xFF6d6c6c),
																				fontSize: 18,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	),
																),
															]
														),
													),
												),
												Container(
													margin: EdgeInsets.only( bottom: 21, left: 26),
													child: Text(
														'Description',
														style: TextStyle(
															color: Color(0xFF000000),
															fontSize: 24,
															fontWeight: FontWeight.bold,
														),
													),
												),
												Container(
													margin: EdgeInsets.only( bottom: 58, left: 25, right: 25),
													width: double.infinity,
													child: Text(
														'Cheese burger dengan daging dan keju mozarella, hanya burger saja tidak dapat bungkus BTS.\n jika ingin menambah minum atau menu lain jangan lupa konfirmasi terlebih dahulu',
														style: TextStyle(
															color: Color(0xFF6d6c6c),
															fontSize: 18,
															fontWeight: FontWeight.bold,
														),
													),
												),
												Container(
													decoration: BoxDecoration(
														borderRadius: BorderRadius.circular(40),
														color: Color(0xFF41BAFF),
													),
													padding: EdgeInsets.only( top: 34, bottom: 20),
													margin: EdgeInsets.symmetric(horizontal: 129),
													width: 159,
													height: 72,
													child: Column(
														children: [
															Text(
																'Add Cart',
																style: TextStyle(
																	color: Color(0xFFffffff),
																	fontSize: 18,
																	fontWeight: FontWeight.bold,
																),
															),
														]
													),
												),
											],
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}