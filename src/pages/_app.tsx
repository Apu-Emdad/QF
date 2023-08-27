/* eslint-disable check-file/filename-naming-convention */

import type { AppProps } from 'next/app';
import { QueryClientProvider, QueryClient } from '@tanstack/react-query';

import { Header } from 'app/common/components/header';

import 'app/styles/globals.scss';
import 'app/styles/main.scss';

const queryClient = new QueryClient();

export default function App({ Component, pageProps }: AppProps) {
  return (
    <QueryClientProvider client={queryClient}>
      <div className="main-app">
        <Header />
        {/* <Sidebar /> */}
        <div className="main-content">
          <Component {...pageProps} />
        </div>
        {/* <ErrorDialog /> */}
      </div>
    </QueryClientProvider>
  );
};
