import { GcsystemfrontendPage } from './app.po';

describe('gcsystemfrontend App', () => {
  let page: GcsystemfrontendPage;

  beforeEach(() => {
    page = new GcsystemfrontendPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
